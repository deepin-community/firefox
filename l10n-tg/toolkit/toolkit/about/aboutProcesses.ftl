# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Page title
about-processes-title = Мудири равандҳо
# The Actions column
about-processes-column-action =
    .title = Амалҳо

## Tooltips

about-processes-shutdown-process =
    .title = Холӣ кардани варақаҳо ва қатъ кардани равандҳо
about-processes-shutdown-tab =
    .title = Пӯшидани варақа
# Profiler icons
# Variables:
#    $duration (Number) The time in seconds during which the profiler will be running.
#                       The value will be an integer, typically less than 10.
about-processes-profile-process =
    .title =
        { $duration ->
            [one] Профилсозии ҳамаи ҷараёнҳои ин раванд ба муддати { $duration } сония
           *[other] Профилсозии ҳамаи ҷараёнҳои ин раванд ба муддати { $duration } сония
        }

## Column headers

about-processes-column-name = Ном
about-processes-column-memory-resident = Ҳофиза
about-processes-column-cpu-total = CPU

## Process names
## Variables:
##    $pid (String) The process id of this process, assigned by the OS.

about-processes-browser-process = «{ -brand-short-name }» ({ $pid })
about-processes-web-process = Раванди муштараки сомона ({ $pid })
about-processes-file-process = Файлҳо ({ $pid })
about-processes-extension-process = Васеъшавиҳо ({ $pid })
about-processes-privilegedabout-process = Саҳифаҳои «About» ({ $pid })
about-processes-plugin-process = Плагинҳо ({ $pid })
about-processes-privilegedmozilla-process = Сомонаҳои { -vendor-short-name } ({ $pid })
about-processes-gmp-plugin-process = Плагинҳои расонаи «Gecko» ({ $pid })
about-processes-gpu-process = GPU ({ $pid })
about-processes-vr-process = VR ({ $pid })
about-processes-rdd-process = Рамзёбии маълумот ({ $pid })
about-processes-socket-process = Шабака ({ $pid })
about-processes-remote-sandbox-broker-process = Миёнрави дурдасти минтақаи санҷишӣ ({ $pid })
about-processes-fork-server-process = Сервери «Форк» ({ $pid })
about-processes-preallocated-process = Пешакӣ ҷойгиршуда ({ $pid })
about-processes-utility-process = Барномаи пуштибонӣ ({ $pid })
# Unknown process names
# Variables:
#    $pid (String) The process id of this process, assigned by the OS.
#    $type (String) The raw type for this process.
about-processes-unknown-process = Дигар: { $type } ({ $pid })

## Isolated process names
## Variables:
##    $pid (String) The process id of this process, assigned by the OS.
##    $origin (String) The domain name for this process.

about-processes-web-isolated-process = { $origin } ({ $pid })
about-processes-web-serviceworker = { $origin } ({ $pid }, «serviceworker»)
about-processes-with-coop-coep-process = { $origin } ({ $pid }, муҳити ҷудошудаи манбаъҳо)
about-processes-web-isolated-process-private = { $origin } — Хусусӣ ({ $pid })
about-processes-with-coop-coep-process-private = { $origin } — Хусусӣ ({ $pid }, муҳити ҷудошудаи манбаъҳо)

## Details within processes

# Single-line summary of threads (non-idle process)
# Variables:
#    $number (Number) The number of threads in the process. Typically larger
#                     than 30. We don't expect to ever have processes with less
#                     than 5 threads.
#    $active (Number) The number of active threads in the process.
#                     The value will be greater than 0 and will never be
#                     greater than $number.
#    $list (String) Comma separated list of active threads.
#                   Can be an empty string if the process is idle.
about-processes-active-threads =
    { $active ->
        [one] { $active } аз { $number } ҷараёни фаъол: { $list }
       *[other] { $active } аз { $number } ҷараёни фаъол: { $list }
    }
# Single-line summary of threads (idle process)
# Variables:
#    $number (Number) The number of threads in the process. Typically larger
#                     than 30. We don't expect to ever have processes with less
#                     than 5 threads.
#                     The process is idle so all threads are inactive.
about-processes-inactive-threads =
    { $number ->
        [one] { $number } ҷараёни ғайрифаъол
       *[other] { $number } ҷараёни ғайрифаъол
    }
# Thread details
# Variables:
#   $name (String) The name assigned to the thread.
#   $tid (String) The thread id of this thread, assigned by the OS.
about-processes-thread-name-and-id = { $name }
    .title = Муайянкунандаи ҷараён: { $tid }
# Tab
# Variables:
#   $name (String) The name of the tab (typically the title of the page, might be the url while the page is loading).
about-processes-tab-name = Варақа: { $name }
about-processes-preloaded-tab = Варақаи нави пешакӣ боркардашуда
# Single subframe
# Variables:
#   $url (String) The full url of this subframe.
about-processes-frame-name-one = Зерчорчӯба: { $url }
# Group of subframes
# Variables:
#   $number (Number) The number of subframes in this group. Always ≥ 1.
#   $shortUrl (String) The shared prefix for the subframes in the group.
about-processes-frame-name-many = Зерчорчӯбаҳо ({ $number }): { $shortUrl }

## Utility process actor names

about-processes-utility-actor-unknown = Иштирокдори номаълум
about-processes-utility-actor-audio-decoder-generic = Рамзкушоии умумии аудио
about-processes-utility-actor-audio-decoder-applemedia = Рамзкушоии аудиоии «Apple Media»
about-processes-utility-actor-audio-decoder-wmf = Рамзкушоии аудиоии «Windows Media Framework»
about-processes-utility-actor-mf-media-engine = Windows Media Foundation Media Engine CDM
# "Oracle" refers to an internal Firefox process and should be kept in English
about-processes-utility-actor-js-oracle = JavaScript Oracle
about-processes-utility-actor-windows-utils = Барномаҳои муфиди «Windows»
about-processes-utility-actor-windows-file-dialog = Равзанаи гуфтугӯи файл дар низоми «Windows»

## Displaying CPU (percentage and total)
## Variables:
##    $percent (Number) The percentage of CPU used by the process or thread.
##                      Always > 0, generally <= 200.
##    $total (Number) The amount of time used by the process or thread since
##                    its start.
##    $unit (String) The unit in which to display $total. See the definitions
##                   of `duration-unit-*`.

# Common case.
about-processes-cpu = { NUMBER($percent, maximumSignificantDigits: 2, style: "percent") }
    .title = Вақти умумии CPU: { NUMBER($total, maximumFractionDigits: 0) }{ $unit }
# Special case: data is not available yet.
about-processes-cpu-user-and-kernel-not-ready = (андозагирӣ)
# Special case: process or thread is almost idle (using less than 0.1% of a CPU core).
# This case only occurs on Windows where the precision of the CPU times is low.
about-processes-cpu-almost-idle = < 0.1%
    .title = Вақти умумии CPU: { NUMBER($total, maximumFractionDigits: 0) }{ $unit }
# Special case: process or thread is currently idle.
about-processes-cpu-fully-idle = ғайрифаъол
    .title = Вақти умумии CPU: { NUMBER($total, maximumFractionDigits: 0) }{ $unit }

## Displaying Memory (total and delta)
## Variables:
##    $total (Number) The amount of memory currently used by the process.
##    $totalUnit (String) The unit in which to display $total. See the definitions
##                        of `memory-unit-*`.
##    $delta (Number) The absolute value of the amount of memory added recently.
##    $deltaSign (String) Either "+" if the amount of memory has increased
##                        or "-" if it has decreased.
##    $deltaUnit (String) The unit in which to display $delta. See the definitions
##                        of `memory-unit-*`.

# Common case.
about-processes-total-memory-size-changed = { NUMBER($total, maximumFractionDigits: 0) }{ $totalUnit }
    .title = Вусъатдиҳӣ: { $deltaSign }{ NUMBER($delta, maximumFractionDigits: 0) }{ $deltaUnit }
# Special case: no change.
about-processes-total-memory-size-no-change = { NUMBER($total, maximumFractionDigits: 0) }{ $totalUnit }

## Duration units

duration-unit-ns = нс
duration-unit-us = мкс
duration-unit-ms = мс
duration-unit-s = сон
duration-unit-m = дақ
duration-unit-h = соат
duration-unit-d = рӯз

## Memory units

memory-unit-B = Б
memory-unit-KB = КБ
memory-unit-MB = МБ
memory-unit-GB = ГБ
memory-unit-TB = ТБ
memory-unit-PB = ПБ
memory-unit-EB = ЕБ
