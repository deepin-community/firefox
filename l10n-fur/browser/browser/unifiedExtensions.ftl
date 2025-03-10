# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


### These strings appear in the Unified Extensions panel.


## Panel

unified-extensions-header-title = Estensions
unified-extensions-manage-extensions =
    .label = Gjestìs estensions

## An extension in the main list

# Each extension in the unified extensions panel (list) has a secondary button
# to open a context menu. This string is used for each of these buttons.
# Variables:
#   $extensionName (String) - Name of the extension
unified-extensions-item-open-menu =
    .aria-label = Vierç il menù par { $extensionName }
unified-extensions-item-message-manage = Gjestìs estension
# Variables:
#   $extensionName (String) - Name of the user-enabled soft-blocked extension.
unified-extensions-item-messagebar-softblocked = { $extensionName } al viole lis politichis di Mozilla. La sô utilizazion e podarès compuartâ risis.

## Extension's context menu

unified-extensions-context-menu-pin-to-toolbar =
    .label = Fisse te sbare dai struments
unified-extensions-context-menu-manage-extension =
    .label = Gjestìs estension
unified-extensions-context-menu-remove-extension =
    .label = Gjave estension
unified-extensions-context-menu-report-extension =
    .label = Segnale estension
unified-extensions-context-menu-move-widget-up =
    .label = Sposte in sù
unified-extensions-context-menu-move-widget-down =
    .label = Sposte in jù

## Notifications

unified-extensions-mb-quarantined-domain-title = Cualchi estension no je consintude
unified-extensions-mb-quarantined-domain-message = Dome cualchi estension monitorade di { -vendor-short-name } e je consintude su chest sît par protezi i tiei dâts.
# .heading is processed by moz-message-bar to be used as a heading attribute
unified-extensions-mb-quarantined-domain-message-3 =
    .heading = Cualchi estension no je consintude
    .message = Par protezi i tiei dâts, cualchi estension no pues lei o cambiâ i dâts su chest sît. Dopre lis impostazions de estension par permeti il so funzionament sui sîts cun restrizions identificâts di { -vendor-short-name }.
unified-extensions-mb-quarantined-domain-learn-more = Plui informazions
    .aria-label = Plui informazions: cualchi estension no je consintude
unified-extensions-mb-about-addons-link = Va aes impostazions de estension
# Variables:
#   $extensionName (String) - Name of the extension disabled through a soft-block.
unified-extensions-mb-blocklist-warning-single =
    .heading = { $extensionName } disativât
    .message =
        Cheste estension e viole lis politichis di Mozilla e e je stade disativade.
        Tu puedis ativâle tes impostazions, ma chest al compuarte risis.
# Variables:
#   $extensionName (String) - Name of the extension disabled through a hard-block.
unified-extensions-mb-blocklist-error-single =
    .heading = { $extensionName } disativât
    .message = Cheste estension e viole lis politichis di Mozilla e e je stade disativade.
# Variables:
#   $extensionsCount (Number) - Number of extensions disabled through both soft and hard-blocks (always going to be greater than 1)
unified-extensions-mb-blocklist-warning-multiple =
    .heading =
        { $extensionsCount ->
            [one] { $extensionsCount } estension disativade
           *[other] { $extensionsCount } estensions disativadis
        }
    .message =
        Cualchidune des tôs estensions e je stade disativade parcè che e viole lis politichis di Mozilla.
        Tu puedis ativâlis in impostazions, ma chest al compuarte risis.
# Variables:
#   $extensionsCount (Number) - Number of extensions disabled through hard-blocks.
unified-extensions-mb-blocklist-error-multiple =
    .heading =
        { $extensionsCount ->
            [one] { $extensionsCount } estension disativade
           *[other] { $extensionsCount } estensions disativadis
        }
    .message = Cualchidune des tôs estensions e je stade disativade parcè che e viole lis politichis di Mozilla.
