const { ComponentUtils } = ChromeUtils.import(
  "resource://gre/modules/ComponentUtils.jsm"
);

const HELPERAPP_DIALOG_CONTRACT = "@mozilla.org/helperapplauncherdialog;1";
const HELPERAPP_DIALOG_CID = Components.ID(
  Cc[HELPERAPP_DIALOG_CONTRACT].number
);

const FAKE_CID = Services.uuid.generateUUID();
/* eslint-env mozilla/frame-script */
function HelperAppLauncherDialog() {}
HelperAppLauncherDialog.prototype = {
  show(aLauncher, aWindowContext, aReason) {
    sendAsyncMessage("suggestedFileName", aLauncher.suggestedFileName);
  },
  QueryInterface: ChromeUtils.generateQI(["nsIHelperAppLauncherDialog"]),
};

var registrar = Components.manager.QueryInterface(Ci.nsIComponentRegistrar);
registrar.registerFactory(
  FAKE_CID,
  "",
  HELPERAPP_DIALOG_CONTRACT,
  ComponentUtils._getFactory(HelperAppLauncherDialog)
);

addMessageListener("unregister", function() {
  registrar.registerFactory(
    HELPERAPP_DIALOG_CID,
    "",
    HELPERAPP_DIALOG_CONTRACT,
    null
  );
  sendAsyncMessage("unregistered");
});
