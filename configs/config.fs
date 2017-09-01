#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

[system/bin/imsdatadaemon]
user: AID_SYSTEM
group: AID_SYSTEM
mode: 0755
caps: NET_BIND_SERVICE

[system/bin/ims_rtp_daemon]
user: AID_SYSTEM
group: AID_RADIO
mode: 0755
caps: NET_BIND_SERVICE

[system/bin/pm-service]
user: AID_SYSTEM
group: AID_SYSTEM
mode: 0755
caps: NET_BIND_SERVICE

[AID_VENDOR_QCOM_DIAG]
value: 2950

[AID_VENDOR_MOT_ACCY]
value: 5000

[AID_VENDOR_MOT_PWRIC]
value: 5001

[AID_VENDOR_MOT_DRM]
value: 5003

[AID_VENDOR_MOT_TCMD]
value: 5004

[AID_VENDOR_MOT_TPAPI]
value: 5007

[AID_VENDOR_MOT_ATVC]
value: 5012

[AID_VENDOR_MOT_ESDFS]
value: 5016