import {XPCOMUtils} from "resource://gre/modules/XPCOMUtils.sys.mjs";
import {AddonManager} from "resource://gre/modules/AddonManager.sys.mjs";

function compare(a, b) {
  return a.name.localeCompare(b.name);
}

function dump_addons(path) {
  AddonManager.getAllAddons().then(function(addons) {
    var resProtoHandler;
    var file = Cc["@mozilla.org/file/local;1"]
               .createInstance(Ci.nsIFile);
    file.initWithPath(path);
    var outstream = Cc["@mozilla.org/network/file-output-stream;1"]
                    .createInstance(Ci.nsIFileOutputStream);
    outstream.init(file, 0x2A /* TRUNCATE | WRONLY | CREATE */, 0o666, 0);
    var out = Cc["@mozilla.org/intl/converter-output-stream;1"]
              .createInstance(Ci.nsIConverterOutputStream);
    out.init(outstream, "UTF-8", 0, 0);

    addons.sort(compare);
    out.writeString("-- Extensions information\n");
    addons.forEach(function(extension) {
      if (extension.type == "plugin")
        return;
      out.writeString("Name: " + extension.name);
      if (extension.type != "extension")
        out.writeString(" " + extension.type);
      out.writeString("\n");
      if (extension.getResourceURI) {
        var location = extension.getResourceURI("");
        if (location.scheme == "resource") {
            if (!resProtoHandler) {
                resProtoHandler = Services.io.getProtocolHandler("resource")
                                  .QueryInterface(Ci.nsIResProtocolHandler);
            }
            location = Services.io.newURI(resProtoHandler.resolveURI(location));
        }
        if (location instanceof Ci.nsIJARURI) {
            location = location.JARFile;
        }
        location = location.QueryInterface(Ci.nsIFileURL).file;
        if (!extension.isBuiltin && extension.scope == AddonManager.SCOPE_PROFILE)
          out.writeString("Location: ${PROFILE_EXTENSIONS}/" +
                          location.leafName + "\n");
        else
          out.writeString("Location: " + location.path + "\n");
      }
      out.writeString("Status: " + (extension.appDisabled ? "app-disabled" :
                                   (extension.softDisabled ? "soft-disabled" :
                                   (extension.userDisabled ? "user-disabled" :
                                   "enabled"))) + "\n");
      out.writeString("\n");
    });

    out.close();
    // Avoid running -dumps-addons-info without a running Firefox counting as
    // a crash.
    Services.startup.trackStartupCrashEnd();
  });
}

export function addonsInfoHandler() {}
addonsInfoHandler.prototype = {
  handle: function clh_handle(cmdLine) {
    var path = cmdLine.handleFlagWithParam("dump-addons-info", false);
    if (!path)
      return;

    cmdLine.preventDefault = true;

    dump_addons(path);
  },

  classDescription: "addonsInfoHandler",
  QueryInterface: ChromeUtils.generateQI([Ci.nsICommandLineHandler]),
};
