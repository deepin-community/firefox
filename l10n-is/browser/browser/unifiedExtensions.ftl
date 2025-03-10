# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


### These strings appear in the Unified Extensions panel.


## Panel

unified-extensions-header-title = Forritsaukar
unified-extensions-manage-extensions =
    .label = Sýsla með forritsauka

## An extension in the main list

# Each extension in the unified extensions panel (list) has a secondary button
# to open a context menu. This string is used for each of these buttons.
# Variables:
#   $extensionName (String) - Name of the extension
unified-extensions-item-open-menu =
    .aria-label = Opna valmynd fyrir { $extensionName }
unified-extensions-item-message-manage = Sýsla með forritsauka
# Variables:
#   $extensionName (String) - Name of the user-enabled soft-blocked extension.
unified-extensions-item-messagebar-softblocked = { $extensionName } brýtur gegn reglum Mozilla. Það getur verið áhættusamt að nota hann.

## Extension's context menu

unified-extensions-context-menu-pin-to-toolbar =
    .label = Festa á verkfærastikuna
unified-extensions-context-menu-manage-extension =
    .label = Sýsla með forritsauka
unified-extensions-context-menu-remove-extension =
    .label = Fjarlægja forritsauka
unified-extensions-context-menu-report-extension =
    .label = Kvarta yfir forritsauka
unified-extensions-context-menu-move-widget-up =
    .label = Færa upp
unified-extensions-context-menu-move-widget-down =
    .label = Færa niður

## Notifications

unified-extensions-mb-quarantined-domain-title = Sumir forritsaukar eru ekki leyfðir
unified-extensions-mb-quarantined-domain-message = Aðeins sumir forritsaukar sem { -vendor-short-name } hefur eftirlit með eru leyfðar á þessu vefsvæði, til að vernda gögnin þín.
# .heading is processed by moz-message-bar to be used as a heading attribute
unified-extensions-mb-quarantined-domain-message-3 =
    .heading = Sumir forritsaukar eru ekki leyfðir
    .message = Til að vernda gögnin þín mega sumar viðbætur ekki lesið eða breytt gögnum á þessari síðu. Notaðu stillingar viðbótarinnar til að leyfa það á vefsvæðum sem takmarkast af { -vendor-short-name }.
unified-extensions-mb-quarantined-domain-learn-more = Frekari upplýsingar
    .aria-label = Frekari upplýsingar: Sumir viðaukar eru ekki leyfðir
unified-extensions-mb-about-addons-link = Fara í stillingar forritsauka
# Variables:
#   $extensionName (String) - Name of the extension disabled through a soft-block.
unified-extensions-mb-blocklist-warning-single =
    .heading = { $extensionName } óvirkt
    .message =
        Þessi forritsauki brýtur gegn reglum Mozilla.
        Þú getur virkjað hann í stillingunum, en slíkt getur verið verið áhættusamt.
# Variables:
#   $extensionName (String) - Name of the extension disabled through a hard-block.
unified-extensions-mb-blocklist-error-single =
    .heading = { $extensionName } óvirkt
    .message = Þessi forritsauki brýtur gegn reglum Mozilla og hefur verið gerður óvirkur.
# Variables:
#   $extensionsCount (Number) - Number of extensions disabled through both soft and hard-blocks (always going to be greater than 1)
unified-extensions-mb-blocklist-warning-multiple =
    .heading =
        { $extensionsCount ->
            [one] { $extensionsCount } forritsauki óvirkur
           *[other] { $extensionsCount } forritsaukar óvirkir
        }
    .message = Sumir forritsaukarnir þínir hafa verið gerðir óvirkir fyrir að brjóta gegn reglum Mozilla. Það getur verið áhættusamt að nota þá.
# Variables:
#   $extensionsCount (Number) - Number of extensions disabled through hard-blocks.
unified-extensions-mb-blocklist-error-multiple =
    .heading =
        { $extensionsCount ->
            [one] { $extensionsCount } forritsauki óvirkur
           *[other] { $extensionsCount } forritsaukar óvirkir
        }
    .message = Sumir forritsaukarnir þínir hafa verið gerðir óvirkir fyrir að brjóta gegn reglum Mozilla.
