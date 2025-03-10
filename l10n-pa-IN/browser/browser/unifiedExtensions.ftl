# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


### These strings appear in the Unified Extensions panel.


## Panel

unified-extensions-header-title = ਇਕਸਟੈਨਸ਼ਨ
unified-extensions-manage-extensions =
    .label = ਇਕਸਟੈਨਸ਼ਨ ਦਾ ਇੰਤਜ਼ਾਮ

## An extension in the main list

# Each extension in the unified extensions panel (list) has a secondary button
# to open a context menu. This string is used for each of these buttons.
# Variables:
#   $extensionName (String) - Name of the extension
unified-extensions-item-open-menu =
    .aria-label = { $extensionName } ਲਈ ਮੇਨੂ ਖੋਲ੍ਹੋ
unified-extensions-item-message-manage = ਇਕਸਟੈਨਸ਼ਨ ਦਾ ਇੰਤਜ਼ਾਮ
# Variables:
#   $extensionName (String) - Name of the user-enabled soft-blocked extension.
unified-extensions-item-messagebar-softblocked = { $extensionName } Mozilla ਦੀਆਂ ਪਾਲਸੀਆਂ ਦਾ ਉਲੰਘਣ ਕਰਦੀ ਹੈ। ਇਸ ਨੂੰ ਵਰਤਣਾ ਖ਼ਤਰਨਾਕ ਹੋ ਸਕਦਾ ਹੈ।

## Extension's context menu

unified-extensions-context-menu-pin-to-toolbar =
    .label = ਟੂਲਬਾਰ ਵਿੱਚ ਟੰਗੋ
unified-extensions-context-menu-manage-extension =
    .label = ਇਕਸਟੈਨਸ਼ਨ ਦਾ ਇੰਤਜ਼ਾਮ
unified-extensions-context-menu-remove-extension =
    .label = ਇਕਸਟੈਨਸ਼ਨ ਹਟਾਓ
unified-extensions-context-menu-report-extension =
    .label = ਇਕਸਟੈਨਸ਼ਨ ਬਾਰੇ ਰਿਪੋਰਟ ਕਰੋ
unified-extensions-context-menu-move-widget-up =
    .label = ਉੱਤੇ ਭੇਜੋ
unified-extensions-context-menu-move-widget-down =
    .label = ਹੇਠਾਂ ਭੇਜੋ

## Notifications

unified-extensions-mb-quarantined-domain-title = ਕੁਝ ਇਕਸਟੈਨਸ਼ਨਾਂ ਦੀ ਮਨਜ਼ੂਰੀ ਨਹੀਂ ਹੈ
unified-extensions-mb-quarantined-domain-message = ਤੁਹਾਡੇ ਡਾਟੇ ਦੀ ਸੁਰੱਖਿਆ ਲਈ ਇਸ ਸਾਈਟ ਉੱਤੇ { -vendor-short-name } ਵਲੋਂ ਨਿਗਰਾਨੀ ਕੀਤੀਆਂ ਇਕਸਟੈਨਸ਼ਨਾਂ ਦੀ ਮਨਜ਼ੂਰੀ ਹੈ।
# .heading is processed by moz-message-bar to be used as a heading attribute
unified-extensions-mb-quarantined-domain-message-3 =
    .heading = ਕੁਝ ਇਕਸਟੈਨਸ਼ਨਾਂ ਦੀ ਮਨਜ਼ੂਰੀ ਨਹੀਂ ਹੈ
    .message = ਤੁਹਾਡੇ ਡਾਟੇ ਨੂੰ ਸੁਰੱਖਿਅਤ ਰੱਖਣ ਲਈ ਕੁਝ ਇਕਸਟੈਨਸ਼ਨਾਂ ਇਸ ਸਾਈਟ ਉੱਤੇ ਡਾਟਾ ਪੜ੍ਹ ਜਾਂ ਬਦਲ ਨਹੀਂ ਸਕਦੀਆਂ ਹਨ। ਇਕਸਟੈਨਸ਼ਨ ਦੀ ਸੈਟਿੰਗਾਂ ਨੂੰ { -vendor-short-name } ਵਲੋਂ ਪਾਬੰਦੀ ਲਾਈਆਂ ਸਾਈਟਾਂ ਉੱਤੇ ਮਨਜ਼ੂਰੀ ਦੇਣ ਲਈ ਵਰਤੋਂ।
unified-extensions-mb-quarantined-domain-learn-more = ਹੋਰ ਜਾਣੋ
    .aria-label = ਹੋਰ ਜਾਣੋ: ਕੁਝ ਇਕਸਟੈਸ਼ਨਾਂ ਦੀ ਇਜਾਜ਼ਤ ਨਹੀਂ ਹੈ
unified-extensions-mb-about-addons-link = ਇਕਸਟੈਨਸ਼ਨ ਸੈਟਿੰਗਾਂ ਉੱਤੇ ਜਾਓ
# Variables:
#   $extensionName (String) - Name of the extension disabled through a soft-block.
unified-extensions-mb-blocklist-warning-single =
    .heading = { $extensionName } ਅਸਮਰੱਥ ਹੈ
    .message =
        ਇਸ ਇਕਸਟੈਨਸ਼ਨ ਨੇ Mozilla ਦੀਆਂ ਪਾਲਸੀਆਂ ਦੀ ਉਲੰਘਣਾ ਕੀਤੀ ਹੈ ਅਤੇ ਇਸ ਨੂੰ ਅਸਮਰੱਥ ਕੀਤਾ ਗਿਆ ਹੈ।
        ਤੁਸੀਂ ਇਸ ਨੂੰ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਸਮਰੱਥ ਕਰ ਸਕਦੇ ਹੋ, ਪਰ ਇਹ ਖ਼ਤਰਨਾਕ ਹੋ ਸਕਦਾ ਹੈ।
# Variables:
#   $extensionName (String) - Name of the extension disabled through a hard-block.
unified-extensions-mb-blocklist-error-single =
    .heading = { $extensionName } ਅਸਮਰੱਥ ਹੈ
    .message = ਇਸ ਇਕਸਟੈਨਸ਼ਨ ਨੇ Mozilla ਦੀਆਂ ਪਾਲਸੀਆਂ ਦੀ ਉਲੰਘਣਾ ਕੀਤੀ ਹੈ ਅਤੇ ਇਸ ਨੂੰ ਅਸਮਰੱਥ ਕੀਤਾ ਗਿਆ ਹੈ।
# Variables:
#   $extensionsCount (Number) - Number of extensions disabled through both soft and hard-blocks (always going to be greater than 1)
unified-extensions-mb-blocklist-warning-multiple =
    .heading =
        { $extensionsCount ->
            [one] { $extensionsCount } ਇਕਸਟੈਨਸ਼ਨ ਅਸਮਰੱਥ ਹੈ
           *[other] { $extensionsCount } ਇਕਸਟੈਨਸ਼ਨਾਂ ਅਸਮਰੱਥ ਹਨ
        }
    .message =
        ਤੁਹਾਡੀਆਂ ਕੁਝ ਇਕਸਟੈਨਸ਼ਨਾਂ ਨੂੰ Mozilla ਦੀਆਂ ਪਾਲਸੀਆਂ ਦੀਆਂ ਉਲੰਘਣਾ ਕਰਨ ਕਰਕੇ ਅਸਮਰੱਥ ਕੀਤਾ ਹੈ।
        ਤੁਸੀਂ ਇਹਨਾਂ ਨੂੰ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਸਮਰੱਥ ਕਰ ਸਕਦੇ ਹੋ, ਪਰ ਇਹ ਖ਼ਤਰਨਾਕ ਹੋ ਸਕਦਾ ਹੈ।
# Variables:
#   $extensionsCount (Number) - Number of extensions disabled through hard-blocks.
unified-extensions-mb-blocklist-error-multiple =
    .heading =
        { $extensionsCount ->
            [one] { $extensionsCount } ਇਕਸਟੈਨਸ਼ਨ ਅਸਮਰੱਥ ਹੈ
           *[other] { $extensionsCount } ਇਕਸਟੈਨਸ਼ਨਾਂ ਅਸਮਰੱਥ ਹਨ
        }
    .message = ਤੁਹਾਡੀਆਂ ਕੁਝ ਇਕਸਟੈਨਸ਼ਨਾਂ ਨੂੰ Mozilla ਦੀਆਂ ਪਾਲਸੀਆਂ ਦੀਆਂ ਉਲੰਘਣਾ ਕਰਨ ਕਰਕੇ ਅਸਮਰੱਥ ਕੀਤਾ ਹੈ।
