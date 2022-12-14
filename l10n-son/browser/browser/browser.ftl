# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


## The main browser window's title

# These are the default window titles everywhere except macOS. The first two
# attributes are used when the web content opened has no title:
#
# default - "Mozilla Firefox"
# private - "Mozilla Firefox (Private Browsing)"
#
# The last two are for use when there *is* a content title.
# Variables:
#  $content-title (String): the title of the web content.
browser-main-window =
    .data-title-default = { -brand-full-name }
    .data-title-private = { -brand-full-name } (Sutura naarumi)
    .data-content-title-default = { $content-title } - { -brand-full-name }
    .data-content-title-private = { $content-title } - { -brand-full-name } (Sutura naarumi)
# These are the default window titles on macOS. The first two are for use when
# there is no content title:
#
# "default" - "Mozilla Firefox"
# "private" - "Mozilla Firefox - (Private Browsing)"
#
# The last two are for use when there *is* a content title.
# Do not use the brand name in the last two attributes, as we do on non-macOS.
#
# Also note the other subtle difference here: we use a `-` to separate the
# brand name from `(Private Browsing)`, which does not happen on other OSes.
#
# Variables:
#  $content-title (String): the title of the web content.
browser-main-window-mac =
    .data-title-default = { -brand-full-name }
    .data-title-private = { -brand-full-name } - (Sutura naarumi)
    .data-content-title-default = { $content-title }
    .data-content-title-private = { $content-title } - (Sutura naarumi)
# This gets set as the initial title, and is overridden as soon as we start
# updating the titlebar based on loaded tabs or private browsing state.
# This should match the `data-title-default` attribute in both
# `browser-main-window` and `browser-main-window-mac`.
browser-main-window-title = { -brand-full-name }

##

urlbar-identity-button =
    .aria-label = Nungu alhabar guna

## Tooltips for images appearing in the address bar

urlbar-services-notification-anchor =
    .tooltiptext = Sinjiyan alhabar fasaldoo feeri
urlbar-web-notification-anchor =
    .tooltiptext = Barmay wala war ga hin ka duu bangandiyaney nungoo ga
urlbar-eme-notification-anchor =
    .tooltiptext = DRM goyjinay juwal alhakey juwal
urlbar-web-rtc-share-microphone-notification-anchor =
    .tooltiptext = War jindezaahayaa ??emnayanoo nda nungoo juwal
urlbar-default-notification-anchor =
    .tooltiptext = Alhabar fasaldoo feeri
urlbar-geolocation-notification-anchor =
    .tooltiptext = Gorodoo h??ayan fasaldoo feeri
urlbar-translate-notification-anchor =
    .tooltiptext = Mo??oo woo berandi
urlbar-web-rtc-share-screen-notification-anchor =
    .tooltiptext = War zanfuney nda dijey ??emnayanoo nda nungoo juwal
urlbar-indexed-db-notification-anchor =
    .tooltiptext = Bila nda interneti ji??iyan alhabar fasaldoo feeri
urlbar-password-notification-anchor =
    .tooltiptext = ??ennikufal gaabu alhabar fasaldoo feeri
urlbar-translated-notification-anchor =
    .tooltiptext = Moo berandiyano juwal
urlbar-plugins-notification-anchor =
    .tooltiptext = Sukari goyyan juwal
urlbar-web-rtc-share-devices-notification-anchor =
    .tooltiptext = War bii nda/wala jindezaahaya ??emnayanoo nda nungoo juwal
urlbar-persistent-storage-notification-anchor =
    .tooltiptext = Bayhayey ji??i ji??iyan duumante ra
urlbar-addons-notification-anchor =
    .tooltiptext = Tontoni sinjiyan alhabar fasaldoo feeri

## Prompts users to use the Urlbar when they open a new tab or visit the
## homepage of their default search engine.
## Variables:
##  $engineName (String): The name of the user's default search engine. e.g. "Google" or "DuckDuckGo".


## Local search mode indicator labels in the urlbar


##

urlbar-geolocation-blocked =
    .tooltiptext = War na gorodoo alhabar gagay interneti nungoo woo se.
urlbar-web-notifications-blocked =
    .tooltiptext = War na bangandiyaney gagay interneti nungoo woo se.
urlbar-camera-blocked =
    .tooltiptext = War na war biizaahayaa gagay interneti nungoo woo se.
urlbar-microphone-blocked =
    .tooltiptext = War na war mikrowoo gagay interneti nungoo woo se.
urlbar-screen-blocked =
    .tooltiptext = War na interneti nungoo woo gagay nd'a ma war dijoo zemni.
urlbar-persistent-storage-blocked =
    .tooltiptext = War na bayhaya ji??iyan duumante gagay interneti nungoo woo se.
# Variables
#   $shortcut (String) - A keyboard shortcut for the edit bookmark command.
urlbar-star-edit-bookmark =
    .tooltiptext = Doo-??ilbaa woo fasal ({ $shortcut })
# Variables
#   $shortcut (String) - A keyboard shortcut for the add bookmark command.
urlbar-star-add-bookmark =
    .tooltiptext = Mo??oo woo ??ilbay ({ $shortcut })

## Page Action Context Menu


## Auto-hide Context Menu

full-screen-autohide =
    .label = Goyjinay ??eerey tugu
    .accesskey = t
full-screen-exit =
    .label = Dijikul alhaali na??
    .accesskey = D

## Search Engine selection buttons (one-offs)

search-one-offs-change-settings-compact-button =
    .tooltiptext = Ceeciyan kayandiyaney barmay
search-one-offs-context-open-new-tab =
    .label = Ceeci kanji taaga ra
    .accesskey = t
search-one-offs-context-set-as-default =
    .label = Kayandi sanda tilasu ceecijinay
    .accesskey = t
# When more than 5 engines are offered by a web page, they are grouped in a
# submenu using this as its label.
search-one-offs-add-engine-menu =
    .label = Ceecijinay tonton

## Local search mode one-off buttons
## Variables:
##  $restrict (String): The restriction token corresponding to the search mode.
##    Restriction tokens are special characters users can type in the urlbar to
##    restrict their searches to certain sources (e.g., "*" to search only
##    bookmarks).


## Bookmark Panel


## Identity Panel

identity-connection-internal = Woo ti { -brand-short-name } moo saajante.
identity-connection-file = Mo??oo woo n' ka jisandii war ordinateroo ga.
identity-active-blocked = { -brand-short-name } na mo??oo woo doo fooya?? ka?? ??i saajaw gagay.
identity-passive-loaded = Mo??oo woo doo fooya?? ??i saajaw (sanda biiya??).
identity-active-loaded = War na jejebuyanoo kaa mo??oo woo ga.
identity-weak-encryption = Mo??oo woo tuguyan dabaroo ga yalaafu.
identity-insecure-login-forms = Huruyan ??ilbawey ka?? goo mo??oo woo ??i hima saajante.
identity-permissions-reload-hint = War ma mo??oo zumandi taaga ka barmawey kanandi.
identity-remove-cert-exception =
    .label = Hasaraw kaa
    .accesskey = k
identity-description-insecure = War dobuyanoo mo??oo woo ga ??i sutura. Boro taney ga hin ka dii ??ilbawey ka?? war n'i sanba (sanda ??ennikufal, toonandiyan, garaw katta, nda tana).
identity-description-insecure-login-forms = War huruyan ??ilbaa ka?? war g'a dam mo??oo woo ga manti saajante nd'a hin ka fukkar.
identity-description-weak-cipher-intro = War dobuyanoo mo??oo woo tuguyan dabaroo ga yalaafu nd'a ??i sutura.
identity-description-weak-cipher-risk = Boro taney ga hin ka dii war alhabarey wal'i ma nungoo aladaboo barmay.
identity-description-active-blocked = { -brand-short-name } na mo??oo woo doo fooya?? ka?? ??i saajaw gagay. <label data-l10n-name="link">Bay ka tonton</label>
identity-description-passive-loaded = War dobuyano ??i sutura nda boro taney ga hin ka dii alhabarey ka?? war n'i ??emna nda nungoo.
identity-description-passive-loaded-insecure = Nungoo goo nda gundekuna ka?? manti saajante (sanda biiya??). <label data-l10n-name="link">Bay ka tonton</label>
identity-description-passive-loaded-mixed = Baa ka?? { -brand-short-name } ga gundekuna jere gagay, gundekuna cindi mo??oo ga ka?? manti saajante (sanda biiya??). <label data-l10n-name="link">Bay ka tonton</label>
identity-description-active-loaded = Nungoo woo goo nda gundekuna ka?? manti saajante (sanda ??igira dumiya??) nda dobuyanoo ??i sutura.
identity-description-active-loaded-insecure = Boro taney ga hin ka dii alhabar ka?? war g'a ??emna nda nungoo woo (sanda ??ennikufal, tooonandiyan, garaw katta, nda tana).
identity-learn-more =
    .value = Bay ka tonton
identity-disable-mixed-content-blocking =
    .label = Jejebu kaa soh?? se
    .accesskey = D
identity-enable-mixed-content-blocking =
    .label = Jejebuyan tunandi
    .accesskey = e
identity-more-info-link-text =
    .label = Alhabar tontoni

## Window controls

browser-window-minimize-button =
    .tooltiptext = Kaccandi
browser-window-close-button =
    .tooltiptext = Daabu

## Tab actions


## These labels should be written in all capital letters if your locale supports them.
## Variables:
##  $count (number): number of affected tabs


## Bookmarks toolbar items


## WebRTC Pop-up notifications

popup-all-windows-shared = Zanfun ka?? ga banga war dijoo ga kul ga ??emnandi.

## WebRTC window or screen share tab switch warning


## DevTools F12 popup


## URL Bar

urlbar-placeholder =
    .placeholder = Ceeci wala aderesu dam
urlbar-switch-to-tab =
    .value = Bere kanjoo ga:
# Used to indicate that a selected autocomplete entry is provided by an extension.
urlbar-extension =
    .value = Dobuyan:
urlbar-go-button =
    .tooltiptext = Koy aderesoo do gorodoo ??eeroo ga
urlbar-page-action-button =
    .tooltiptext = Moo goyey

## Action text shown in urlbar results, usually appended after the search
## string or the url, like "result value - action text".

# The "with" format was chosen because the search engine name can end with
# "Search", and we would like to avoid strings like "Search MSN Search".
# Variables
#  $engine (String): the name of a search engine
urlbar-result-action-search-w-engine = Ceeci nda { $engine }
urlbar-result-action-switch-tab = Bere kanji ga
urlbar-result-action-visit = Naaru

## Action text shown in urlbar results, usually appended after the search
## string or the url, like "result value - action text".
## In these actions "Search" is a verb, followed by where the search is performed.


## Labels shown above groups of urlbar results


## Full Screen and Pointer Lock UI

# Please ensure that the domain stays in the `<span data-l10n-name="domain">` markup.
# Variables
#  $domain (String): the domain that is full screen, e.g. "mozilla.org"
fullscreen-warning-domain = <span data-l10n-name="domain">{ $domain }</span> dijikul cebeyan soh??
fullscreen-warning-no-domain = Takaddaa woo ga cebe dijikul ga soh??
fullscreen-exit-button = Fatta dijikul ra (Esc)
# "esc" is lowercase on mac keyboards, but uppercase elsewhere.
fullscreen-exit-mac-button = Fatta dijikul ra (esc)
# Please ensure that the domain stays in the `<span data-l10n-name="domain">` markup.
# Variables
#  $domain (String): the domain that is using pointer-lock, e.g. "mozilla.org"
pointerlock-warning-domain = <span data-l10n-name="domain">{ $domain }</span> ga war cebejiyoo juwal. Esc naagu ka juwaloo taa koyne.
pointerlock-warning-no-domain = Takaddaa woo ga war cebejiyoo juwal. Esc naagu ka juwaloo taa koyne.

## Subframe crash notification


## Bookmarks panels, menus and toolbar

bookmarks-toolbar-chevron =
    .tooltiptext = Doo-??ilbay tontoney cebe
bookmarks-sidebar-content =
    .aria-label = Doo-??ilbawey
bookmarks-other-bookmarks-menu =
    .label = Doo-??ilbay taaney
bookmarks-mobile-bookmarks-menu =
    .label = Doo-??ilbay dirantey
bookmarks-search =
    .label = Doo-??ilbawey ceeci
bookmarks-bookmark-edit-panel =
    .label = Doo-??ilbaa woo fasal
bookmarks-toolbar-menu =
    .label = Doo-??ilbawey goyjinay ??eeri
bookmarks-toolbar-placeholder =
    .title = Doo-??ilbawey goyjinay ??eeri hayiizey
bookmarks-toolbar-placeholder-button =
    .label = Doo-??ilbawey goyjinay ??eeri hayiizey

## Library Panel items


## Pocket toolbar button


## Repair text encoding toolbar button


## Customize Toolbar Buttons


## More items

more-menu-go-offline =
    .label = Goy bila nda cinari
    .accesskey = G
toolbar-button-email-link =
    .label = Bataga dobu
    .tooltiptext = Dobu sanba mo??oo woo ga
# Variables:
#  $shortcut (String): keyboard shortcut to save a copy of the page
toolbar-button-save-page =
    .label = Mo??oo gaabu
    .tooltiptext = Mo??oo woo gaabu ({ $shortcut })
# Variables:
#  $shortcut (String): keyboard shortcut to open a local file
toolbar-button-open-file =
    .label = Tuku feeri
    .tooltiptext = Tuku feeri ({ $shortcut })
toolbar-button-synced-tabs =
    .label = Kanji hangantey
    .tooltiptext = Jinay taney kanjey cebe
# Variables
# $shortcut (string) - Keyboard shortcut to open a new private browsing window
toolbar-button-new-private-window =
    .label = Sutura zanfun taaga
    .tooltiptext = Sutura ceeciyan zanfun taaga feeri ({ $shortcut })

## EME notification panel

eme-notifications-drm-content-playing = Jinde wala widewo foo interneti nungoo woo ra ga goy nda DRM goyjinay ka?? ga hin ka goyey ka????{ -brand-short-name } ga na?? war m'i tee nd'a naka??i.

## Password save/update panel


## Add-on removal warning


## Remote / Synced tabs


##

ui-tour-info-panel-close =
    .tooltiptext = Daabu

## Variables:
##  $uriHost (String): URI host for which the popup was allowed or blocked.

popups-infobar-allow =
    .label = Biibo?? batawey noo fondo { $uriHost } se
    .accesskey = p
popups-infobar-block =
    .label = Biibo?? batawey gagay { $uriHost } se
    .accesskey = p

##

popups-infobar-dont-show-message =
    .label = ??i alhabaroo cebe waati ka?? biibo?? batawey gagayandi
    .accesskey = D

# Navigator Toolbox

navbar-downloads =
    .label = Zumandiyaney
navbar-overflow =
    .tooltiptext = Goyjinay tontoney???
# Variables:
#   $shortcut (String): keyboard shortcut to print the page
navbar-print =
    .label = Kar
    .tooltiptext = Mo??oo woo kar??? ({ $shortcut })
navbar-print-tab-modal-disabled =
    .label = Kar
    .tooltiptext = Mo??oo woo kar
navbar-search =
    .title = Ceeci
# Name for the tabs toolbar as spoken by screen readers. The word
# "toolbar" is appended automatically and should not be included in
# in the string
tabs-toolbar =
    .aria-label = Ceecikaw kanjey
tabs-toolbar-new-tab =
    .label = Kanji taaga
tabs-toolbar-list-all-tabs =
    .label = Kanjey kul ??eedandi
    .tooltiptext = Kanjey kul ??eedandi
