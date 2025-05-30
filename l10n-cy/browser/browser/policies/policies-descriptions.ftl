# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


## The Enterprise Policies feature is aimed at system administrators
## who want to deploy these settings across several Firefox installations
## all at once. This is traditionally done through the Windows Group Policy
## feature, but the system also supports other forms of deployment.
## These are short descriptions for individual policies, to be displayed
## in the documentation section in about:policies.

policy-3rdparty = Gosodwch bolisïau y gall WebExtensions gael mynediad atyn nhw trwy chrome.storage.managed.
policy-AllowedDomainsForApps = Diffinio parthau sy'n cael eu caniatáu i gael mynediad at Google Workpace.
policy-AllowFileSelectionDialogs = Caniatáu deialogau dewis ffeiliau.
policy-AppAutoUpdate = Galluogi neu analluogi diweddaru rhaglen yn awtomatig.
policy-AppUpdatePin = Rhwystro { -brand-short-name } rhag cael ei ddiweddaru y tu hwnt i'r fersiwn penodedig.
policy-AppUpdateURL = Gosod URL diweddaru ap cyfaddas.
policy-Authentication = Ffurfweddu dilysu integredig ar gyfer gwefannau sy'n ei gefnogi.
policy-AutofillAddressEnabled = Galluogi awtolenwi cyfeiriadau.
policy-AutofillCreditCardEnabled = Galluogi awtolenwi dulliau talu.
policy-AutoLaunchProtocolsFromOrigins = Diffiniwch restr o brotocolau allanol y mae modd eu defnyddio o darddiad rhestredig heb annog y defnyddiwr.
policy-BackgroundAppUpdate2 = Galluogi neu analluogi'r diweddarydd cefndir.
policy-BlockAboutAddons = Rhwystro mynediad at y Rheolwr Ychwanegion (about:addons)
policy-BlockAboutConfig = Rhwystro mynediad at y dudalen about:config.
policy-BlockAboutProfiles = Rhwystro mynediad at y dudalen about:profiles.
policy-BlockAboutSupport = Rhwystro mynediad at y dudalen about:support.
policy-Bookmarks = Creu nodau tudalen yn y bar offer Nodau Tudalen, dewislen Nodau Tudalen neu ffolder penodol o'u mewn.
policy-CaptivePortal = Galluogi neu analluogi'r cymorth porth caeth.
policy-CertificatesDescription = Ychwanegu tystysgrifau neu ddefnyddio tystysgrifau mewnol.
policy-ContentAnalysis = Galluogi neu analluogi cysylltiad ag asiant atal colli data.
policy-Cookies = Caniatáu neu wrthod i wefannau osod cwcis.
# Containers in this context is referring to container tabs in Firefox.
policy-Containers = Gosod polisïau sy'n ymwneud â chynwysyddion.
policy-DisableAccounts = Analluogi gwasanaethau sy'n seiliedig ar gyfrifon, gan gynnwys cydweddu.
policy-DisabledCiphers = Analluogi seifferau.
policy-DefaultDownloadDirectory = Gosod y cyfeiriadur llwytho i lawr rhagosodedig.
policy-DisableAppUpdate = Rhwystro'r wefan rhag diweddaru.
policy-DisableBuiltinPDFViewer = Analluogi PDF.js, y dangosydd PDF mewnol yn { -brand-short-name }.
policy-DisableDefaultBrowserAgent = Atal asiant y porwr rhagosodedig rhag cymryd unrhyw gamau. Dim ond yn berthnasol i Windows; nid oes gan lwyfannau eraill yr asiant.
policy-DisableDeveloperTools = Rhwystro mynediad at yr offer datblygwr.
policy-DisableEncryptedClientHello = Analluogi defnydd o'r nodwedd TLS wedi'i Amgryptio Cleient Hello (ECH).
policy-DisableFeedbackCommands = Analluogi gorchmynion rhag anfon adborth o'r ddewislen Cymorth (Cyflwyno Adborth ac Adrodd ar Wefan Dwyllodrus).
policy-DisableFirefoxAccounts = Analluogi gwasanaethau'n seiliedig ar { -fxaccount-brand-name }, gan gynnwys Sync.
# This string is in the process of being deprecated in favor of policy-DisableAccounts.
policy-DisableFirefoxAccounts1 = Analluogi gwasanaethau sy'n seiliedig ar gyfrifon, gan gynnwys cydweddu.
# Firefox Screenshots is the name of the feature, and should not be translated.
policy-DisableFirefoxScreenshots = Analluogi nodwedd Firefox Screenshots.
policy-DisableFirefoxStudies = Rhwystro { -brand-short-name } rhag rhedeg astudiaethau.
policy-DisableForgetButton = Rhwystro mynediad at y botwm Anghofio.
policy-DisableFormHistory = Peidio â chofio chwilio a hanes ffurflenni.
policy-DisablePrimaryPasswordCreation = Os yn wir, nid oes modd creu Prif Cyfrinair.
policy-DisablePasswordReveal = Peidiwch â gadael i gyfrineiriau gael eu datgelu mewn mewngofnodi sydd wedi'u cadw.
policy-DisablePocket2 = Analluogi'r nodwedd i gadw tudalennau gwe i { -pocket-brand-name }.
policy-DisablePrivateBrowsing = Analluogi Pori Preifat.
policy-DisableProfileImport = Analluogi'r gorchymyn dewislen i fewnforio data o borwr arall.
policy-DisableProfileRefresh = Analluogi botwm Adnewyddu { -brand-short-name } yn nhudalen about:support
policy-DisableSafeMode = Analluogi'r nodwedd i ailgychwyn yn y Modd Diogel. Sylw: dim ond drwy'r Polisi Grŵp y mae modd analluogi'r defnydd o fysell Shift i fynd i'r modd Diogel.
policy-DisableSecurityBypass = Rhwystro'r defnyddiwr rhag osgoi rhai rhybuddion diogelwch.
policy-DisableSetAsDesktopBackground = Analluogi'r dewislen gorchymyn Gosod fel Delwedd Cefndir ar gyfer delwddau.
policy-DisableSystemAddonUpdate = Wrthi'n rhwystro'r porwr rhag gosod a diweddaru ychwanegion y system.
policy-DisableTelemetry = Diffodd Telemetreg
policy-DisableThirdPartyModuleBlocking = Rhwystrwch y defnyddiwr rhag rhwystro modiwlau trydydd parti sy'n cael eu chwistrellu i'r broses { -brand-short-name }.
policy-DisplayBookmarksToolbar = Dangos y Bar Offer Nodau Tudalen drwy ragosodiad.
policy-DisplayMenuBar = Dangos y Bar Dewislen drwy ragosodiad
policy-DNSOverHTTPS = Ffurfweddu DNS dros HTTPS.
policy-DontCheckDefaultBrowser = Analluogwch gwirio am y porwr rhagosodedig wrth gychwyn.
policy-DownloadDirectory = Gosod a chloi'r cyfeiriadur llwytho i lawr.
# “lock” means that the user won’t be able to change this setting
policy-EnableTrackingProtection = Galluogi neu analluogi Rhwystro Cynnwys ac o ddewis ei gloi.
# “lock” means that the user won’t be able to change this setting
policy-EncryptedMediaExtensions = Galluogi neu Analluogi Estyniadau Cyfryngau Amgryptiedig ac o ddewis eu cloi.
policy-ExemptDomainFileTypePairsFromFileTypeDownloadWarnings = Analluogi rhybuddion yn seiliedig ar estyniad ffeil ar gyfer mathau penodol o ffeiliau ar barthau.
# A “locked” extension can’t be disabled or removed by the user. This policy
# takes 3 keys (“Install”, ”Uninstall”, ”Locked”), you can either keep them in
# English or translate them as verbs.
policy-Extensions = Gosod, dadosod neu gloi estyniadau. Mae'r dewis gosod yn cymryd URL neu lwybrau fel paramedrau. Mae'r dewisiadau Dadosod a Chloi yn cymryd dynodiad estyniadau.
policy-ExtensionSettings = Rheoli pob agwedd o osod estyniad.
policy-ExtensionUpdate = Galluogi neu analluogi diweddaru estyniadau'n awtomatig.
policy-FirefoxHome2 = Ffurfweddu { -firefox-home-brand-name }.
policy-FirefoxSuggest = Ffurfweddu { -firefox-suggest-brand-name }.
policy-GoToIntranetSiteForSingleWordEntryInAddressBar = Gorfodi llywio safle mewnrwyd yn uniongyrchol yn lle chwilio wrth deipio gair yn y bar cyfeiriad.
policy-Handlers = Ffurfweddu trinwyr rhaglenni rhagosodedig.
policy-HardwareAcceleration = Os gau, diffodd cyflymu caledwedd.
# “lock” means that the user won’t be able to change this setting
policy-Homepage = Gosod ac o ddewis cloi'r dudalen cartref.
policy-HttpAllowlist = Gwreiddiau na fyddant yn cael eu huwchraddio i HTTPS.
policy-HttpsOnlyMode = Caniatáu i'r Modd HTTPS yn Unig gael ei alluogi.
policy-InstallAddonsPermission = Caniatáu i rai gwefannau i osod ychwanegion
policy-LegacyProfiles = Analluoga'r nodwedd gan orfodi proffil ar wahân ar gyfer pob gosodiad

## Do not translate "SameSite", it's the name of a cookie attribute.

policy-LegacySameSiteCookieBehaviorEnabled = Galluogi'r gosodiad rhagosodedig ymddygiadol cwci SameSite blaenorol.
policy-LegacySameSiteCookieBehaviorEnabledForDomainList = Dychwelyd at ymddygiad blaenorol SameSite ar gyfer cwcis ar wefannau penodol.

##

policy-LocalFileLinks = Caniatáu i wefannau penodol gysylltu i ffeiliau lleol.
policy-ManagedBookmarks = Yn ffurfweddu rhestr o nodau tudalen sy'n cael eu rheoli gan weinyddwr nad yw'r defnyddiwr yn gallu eu newid.
policy-ManualAppUpdateOnly = Caniatáu diweddariadau â llaw yn unig a pheidio â hysbysu'r defnyddiwr am ddiweddariadau.
policy-PrimaryPassword = Ei gwneud yn ofynnol neu atal defnyddio Prif Gyfrinair.
policy-PrintingEnabled = Galluogi neu analluogi argraffu.
policy-NetworkPrediction = Galluogi neu analluoga rhagfynegiad rhwydwaith (rhagosod ymlaen DNS).
policy-NewTabPage = Galluogi neu analluogi tudalen Tab Newydd.
policy-NoDefaultBookmarks = Analluogi creu nodau tudalen rhagosodedig wedi eu pecynnu gyda { -brand-short-name }, a'r Nodau Tudalen Clyfar (Ymwelwyd Amlaf, Tagiau Diweddar). Sylw: mae'r polisi hwn ddim ond yn effeithiol os yw'n cael ei ddefnyddio cyn rhedeg y proffil y tro cyntaf.
policy-OfferToSaveLogins = Gorfodi'r gosodiad i ganiatáu i { -brand-short-name } gynnig cofio mewngofnodion a chyfrineiriau wedi eu cadw. Mae gwerthoedd gwir a gau'n cael eu derbyn.
policy-OfferToSaveLoginsDefault = Gosodwch y gwerth ragosodedig ar gyfer caniatáu i { -brand-short-name } gynnig cofio mewngofnodion a chyfrineiriau wedi'u cadw. Mae gwerthoedd gwir a ffug yn cael eu derbyn.
policy-OverrideFirstRunPage = Diystyru y dudalen rhediad gyntaf. Gosod y polisi hwn i gwag os ydych am analluogi'r dudalen rhediad cyntaf.
policy-OverridePostUpdatePage = Diystyru'r dudalen ôl ddiweddaru "Beth sy'n Newydd". Gosodwch y polisi hwn i gwag os hoffech chi analluogi'r dudalen ôl ddiweddaru.
policy-PasswordManagerEnabled = Galluogi cadw cyfrineiriau i'r rheolwr cyfrinair.
policy-PasswordManagerExceptions = Rhwystro { -brand-short-name } rhag cadw cyfrineiriau ar gyfer gwefannau penodol.
# Post-quantum refers to cryptography that is safe from attacks by quantum
# computers. See https://en.wikipedia.org/wiki/Post-quantum_cryptography
policy-PostQuantumKeyAgreementEnabled = Galluogi cytundeb allwedd ôl-cwantwm ar gyfer TLS.
# PDF.js and PDF should not be translated
policy-PDFjs = Analluogwch neu ffurfweddu PDF.js, y darllenydd PDF mewnol yn { -brand-short-name }.
policy-Permissions2 = Ffurfweddwch y caniatâd ar gyfer camera, meicroffon, lleoliadau, hysbysiadau ac awtochwarae.
policy-PictureInPicture = Galluogi neu analluogi Llun-mewn-Llun.
policy-PopupBlocking = Caniatáu rhai gwefannau i ddangos llamlenni drwy ragosodiad.
policy-Preferences = Gosod a chloi gwerth is-set o ddewisiadau.
policy-PrivateBrowsingModeAvailability = Gosod argaeledd y modd pori preifat.
policy-PromptForDownloadLocation = Gofynnwch ble i gadw ffeiliau wrth eu llwytho i lawr.
policy-Proxy = Ffurfweddu gosodiadau eilydd
policy-RequestedLocales = Gosodwch y rhestr o locales gofynnol ar gyfer y rhaglen yn ôl eich trefn dewis.
policy-SanitizeOnShutdown2 = Clirio data llywio wrth gau.
policy-SearchBar = Gosod y lleoliad ragosodedig y bar chwilio. Mae'r defnyddiwr dal yn cael ei gyfaddasu.
policy-SearchEngines = Ffurfweddu gosodiadau peiriannau chwilio. Dim ond yn y fersiwn Extended Support Release (ESR) mae'r polisi hwn ar gael.
policy-SearchSuggestEnabled = Galluogi neu analluogi awgrymiadau chwilio.
# For more information, see https://wikipedia.org/wiki/PKCS_11
policy-SecurityDevices2 = Ychwanegu neu ddileu modiwlau PKCS #11.
policy-ShowHomeButton = Dangos y botwm cartref ar y bar offer.
policy-SSLVersionMax = Gosodwch y fersiwn SSL uchaf.
policy-SSLVersionMin = Gosodwch y fersiwn SSL lleiaf.
policy-StartDownloadsInTempDirectory = Gorfodi llwytho i lawr i gychwyn mewn lleoliad lleol, dros dro yn hytrach na'r cyfeiriadur llwytho i lawr rhagosodedig.
policy-SupportMenu = Ychwanegu eitem ddewislen cymorth cyfaddas i'r ddewislen cymorth.
policy-TranslateEnabled = Galluogi neu analluogi cyfieithu tudalennau gwe.
policy-UserMessaging = Peidio â dangos rhai negeseuon i'r defnyddiwr.
policy-UseSystemPrintDialog = Argraffu gan ddefnyddio deialog argraffu'r system.
# “format” refers to the format used for the value of this policy.
policy-WebsiteFilter = Rhwystro gwefannau rhag derbyn ymweliadau. Gw. dogfennaeth am ragor o wybodaeth ar y fformat.
policy-Windows10SSO = Caniatáu mewngofnodiad unigol ar gyfer cyfrifon Microsoft, gwaith ac ysgol.
