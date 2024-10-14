# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


## Labels for sidebar history panel

# Variables:
#   $date (string) - Date to be formatted based on locale
sidebar-history-date-today =
    .heading = Danes – { DATETIME($date, dateStyle: "full") }
sidebar-history-date-yesterday =
    .heading = Včeraj – { DATETIME($date, dateStyle: "full") }
sidebar-history-date-this-month =
    .heading = { DATETIME($date, dateStyle: "full") }
sidebar-history-date-prev-month =
    .heading = { DATETIME($date, month: "long", year: "numeric") }
sidebar-history-delete =
    .title = Izbriši iz zgodovine
sidebar-history-sort-by-date =
    .label = Razvrsti po datumu
sidebar-history-sort-by-site =
    .label = Razvrsti po spletnem mestu
sidebar-history-clear =
    .label = Počisti zgodovino

## Labels for sidebar search

# "Search" is a noun (as in "Results of the search for")
# Variables:
#   $query (String) - The search query used for searching through browser history.
sidebar-search-results-header =
    .heading = Zadetki iskanja za "{ $query }"

## Labels for sidebar customize panel

sidebar-customize-extensions-header = Razširitve za stransko vrstico
sidebar-customize-firefox-tools-header =
    .label = Orodja za { -brand-product-name(sklon: "tozilnik") }
sidebar-customize-firefox-settings = Upravljanje nastavitev { -brand-short-name(sklon: "rodilnik") }
sidebar-position-left =
    .label = Prikaži na levi
sidebar-position-right =
    .label = Prikaži na desni
sidebar-vertical-tabs =
    .label = Navpični zavihki
sidebar-horizontal-tabs =
    .label = Vodoravni zavihki
sidebar-customize-tabs-header =
    .label = Nastavitve zavihkov
sidebar-customize-settings-header =
    .label = Nastavitve stranske vrstice
sidebar-visibility-always-show =
    .label = Vedno prikaži
sidebar-visibility-hide-sidebar =
    .label = Skrij stransko vrstico

## Labels for sidebar context menu items

sidebar-context-menu-manage-extension =
    .label = Upravljanje razširitve
sidebar-context-menu-remove-extension =
    .label = Odstrani razširitev
sidebar-context-menu-report-extension =
    .label = Prijavi razširitev
sidebar-context-menu-open-in-window =
    .label = Odpri v novem oknu
sidebar-context-menu-open-in-private-window =
    .label = Odpri v novem zasebnem oknu
sidebar-context-menu-bookmark-tab =
    .label = Dodaj zavihek med zaznamke …
sidebar-context-menu-copy-link =
    .label = Kopiraj povezavo

## Labels for sidebar history context menu items

sidebar-history-context-menu-delete-page =
    .label = Izbriši iz zgodovine

## Labels for sidebar menu items.

sidebar-menu-history-label =
    .label = Zgodovina
sidebar-menu-synced-tabs-label =
    .label = Zavihki z drugih naprav
sidebar-menu-bookmarks-label =
    .label = Zaznamki
sidebar-menu-customize-label =
    .label = Prilagodi stransko vrstico

## Headings for sidebar menu panels.

sidebar-menu-customize-header =
    .heading = Prilagodi stransko vrstico
sidebar-menu-history-header =
    .heading = Zgodovina
sidebar-menu-syncedtabs-header =
    .heading = Zavihki z drugih naprav
