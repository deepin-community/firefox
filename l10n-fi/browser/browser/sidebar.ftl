# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

menu-view-genai-chat =
    .label = AI-chatbotti
menu-view-review-checker =
    .label = Arvostelujen tarkistin
menu-view-contextual-password-manager =
    .label = Salasanat
sidebar-options-menu-button =
    .title = Avaa valikko

## Labels for sidebar history panel

# Variables:
#   $date (string) - Date to be formatted based on locale
sidebar-history-date-today =
    .heading = Tänään - { DATETIME($date, dateStyle: "full") }
sidebar-history-date-yesterday =
    .heading = Eilen - { DATETIME($date, dateStyle: "full") }
sidebar-history-date-this-month =
    .heading = { DATETIME($date, dateStyle: "full") }
sidebar-history-date-prev-month =
    .heading = { DATETIME($date, month: "long", year: "numeric") }
sidebar-history-delete =
    .title = Poista historiasta
sidebar-history-sort-by-date =
    .label = Järjestä päiväyksen mukaan
sidebar-history-sort-by-site =
    .label = Järjestä sivuston mukaan
sidebar-history-clear =
    .label = Tyhjennä historia

## Labels for sidebar search

# "Search" is a noun (as in "Results of the search for")
# Variables:
#   $query (String) - The search query used for searching through browser history.
sidebar-search-results-header =
    .heading = Tulokset haulle “{ $query }”

## Labels for sidebar customize panel

sidebar-customize-extensions-header = Sivupalkin laajennukset
sidebar-customize-firefox-tools-header =
    .label = { -brand-product-name }-työkalut
sidebar-customize-firefox-settings = Hallitse { -brand-short-name }-asetuksia
sidebar-position-left =
    .label = Näytä vasemmalla
sidebar-position-right =
    .label = Näytä oikealla
sidebar-vertical-tabs =
    .label = Pystysuuntaiset välilehdet
sidebar-settings =
    .label = Sivupalkin asetukset
sidebar-hide-tabs-and-sidebar =
    .label = Piilota välilehdet ja sivupalkki
sidebar-show-on-the-right =
    .label = Siirrä sivupalkki oikealle
sidebar-show-on-the-left =
    .label = Siirrä sivupalkki vasemmalle
# Option to automatically expand the collapsed sidebar when the mouse pointer
# hovers over it.
expand-sidebar-on-hover =
    .label = Laajenna sivupalkki hiiren päällä
sidebar-horizontal-tabs =
    .label = Vaakasuuntaiset välilehdet
sidebar-customize-tabs-header =
    .label = Välilehtiasetukset
sidebar-customize-button-header =
    .label = Sivupalkin painike
sidebar-customize-position-header =
    .label = Sivupalkin sijainti
sidebar-visibility-setting-always-show =
    .label = Laajenna ja supista sivupalkki
sidebar-visibility-setting-hide-sidebar =
    .label = Näytä ja piilota sivupalkki

## Labels for sidebar context menu items

sidebar-context-menu-manage-extension =
    .label = Hallitse laajennusta
sidebar-context-menu-remove-extension =
    .label = Poista laajennus
sidebar-context-menu-report-extension =
    .label = Raportoi laajennus
sidebar-context-menu-open-in-window =
    .label = Avaa uudessa ikkunassa
sidebar-context-menu-open-in-private-window =
    .label = Avaa uuteen yksityiseen ikkunaan
sidebar-context-menu-bookmark-tab =
    .label = Lisää välilehti kirjanmerkkeihin…
sidebar-context-menu-copy-link =
    .label = Kopioi linkki
# Variables:
#   $deviceName (String) - The name of the device the user is closing a tab for
sidebar-context-menu-close-remote-tab =
    .label = Sulje välilehti laitteella { $deviceName }

## Labels for sidebar history context menu items

sidebar-history-context-menu-delete-page =
    .label = Poista historiasta

## Labels for sidebar menu items.

sidebar-menu-genai-chat-label =
    .label = AI-chatbotti
sidebar-menu-history-label =
    .label = Historia
sidebar-menu-synced-tabs-label =
    .label = Välilehdet muista laitteista
sidebar-menu-bookmarks-label =
    .label = Kirjanmerkit
sidebar-menu-customize-label =
    .label = Muokkaa sivupalkkia
sidebar-menu-review-checker-label =
    .label = Arvostelujen tarkistin
sidebar-menu-contextual-password-manager-label =
    .label = Salasanat

## Tooltips for sidebar menu items.

# The tooltip to show over the history icon, when history is not currently showing.
# Variables:
#   $shortcut (String) - The OS specific keyboard shortcut.
sidebar-menu-open-history-tooltip = Avaa historia ({ $shortcut })
# The tooltip to show over the history icon, when history is currently showing.
# Variables:
#   $shortcut (String) - The OS specific keyboard shortcut.
sidebar-menu-close-history-tooltip = Sulje historia ({ $shortcut })
# The tooltip to show over the bookmarks icon, when bookmarks is not currently showing.
# Variables:
#   $shortcut (String) - The OS specific keyboard shortcut.
sidebar-menu-open-bookmarks-tooltip = Avaa kirjanmerkit ({ $shortcut })
# The tooltip to show over the bookmarks icon, when bookmarks is currently showing.
# Variables:
#   $shortcut (String) - The OS specific keyboard shortcut.
sidebar-menu-close-bookmarks-tooltip = Sulje kirjanmerkit ({ $shortcut })
sidebar-menu-open-ai-chatbot-tooltip = Avaa AI-chatbotti
sidebar-menu-close-ai-chatbot-tooltip = Sulje AI-chatbotti

## Tooltips displayed over the AI chatbot icon.
## Variables:
##   $shortcut (String) - The OS specific keyboard shortcut.
##   $provider (String) - The name of the AI chatbot provider (if available).

sidebar-menu-open-ai-chatbot-tooltip-generic = Avaa AI-chatbotti ({ $shortcut })
sidebar-menu-open-ai-chatbot-provider-tooltip = Avaa { $provider } ({ $shortcut })
sidebar-menu-close-ai-chatbot-tooltip-generic = Sulje AI-chatbotti ({ $shortcut })
sidebar-menu-close-ai-chatbot-provider-tooltip = Sulje { $provider } ({ $shortcut })

## Headings for sidebar menu panels.

sidebar-menu-customize-header =
    .heading = Muokkaa sivupalkkia
sidebar-menu-history-header =
    .heading = Historia
sidebar-menu-syncedtabs-header =
    .heading = Välilehdet muista laitteista
sidebar-menu-bookmarks-header =
    .heading = Kirjanmerkit
sidebar-menu-cpm-header =
    .heading = Salasanat
sidebar-panel-header-close-button =
    .tooltiptext = Sulje

## Titles for sidebar menu panels.

sidebar-customize-title = Muokkaa sivupalkkia
sidebar-history-title = Sivuhistoria
sidebar-syncedtabs-title = Välilehdet muista laitteista

## Context for closing synced tabs when hovering over the items

# Context for hovering over the close tab button that will
# send a push to the device to close said tab
# Variables:
#   $deviceName (String) - the name of the device the user is closing a tab for
synced-tabs-context-close-tab-title =
    .title = Sulje välilehti laitteella { $deviceName }
show-sidebars =
    .tooltiptext = Näytä sivupaneelit
    .label = Sivupaneelit

## Tooltips for the sidebar toolbar widget.

# Variables:
#   $shortcut (String) - The OS specific keyboard shortcut.
sidebar-widget-expand-sidebar2 =
    .tooltiptext = Laajenna sivupalkki ({ $shortcut })
    .label = Sivupaneelit
# Variables:
#   $shortcut (String) - The OS specific keyboard shortcut.
sidebar-widget-collapse-sidebar2 =
    .tooltiptext = Supista sivupalkki ({ $shortcut })
    .label = Sivupaneelit
# Variables:
#   $shortcut (String) - The OS specific keyboard shortcut.
sidebar-widget-show-sidebar2 =
    .tooltiptext = Näytä sivupalkki ({ $shortcut })
    .label = Sivupaneelit
# Variables:
#   $shortcut (String) - The OS specific keyboard shortcut.
sidebar-widget-hide-sidebar2 =
    .tooltiptext = Piilota sivupalkki ({ $shortcut })
    .label = Sivupaneelit
