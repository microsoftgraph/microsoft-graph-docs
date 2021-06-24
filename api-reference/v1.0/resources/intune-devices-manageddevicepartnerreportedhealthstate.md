---
title: "managedDevicePartnerReportedHealthState enum type"
description: "Available health states for the Device Health API"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# managedDevicePartnerReportedHealthState enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Available health states for the Device Health API

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Device health state is not yet reported|
|activated|1|Device has been activated by a mobile threat defense partner, but has not yet reported health.|
|deactivated|2|Device has been deactivated by a mobile threat defense partner. The device health is not known.|
|secured|3|Device is considered secured by the mobile threat defense partner.|
|lowSeverity|4|Device is considered low threat by the mobile threat defense partner.|
|mediumSeverity|5|Device is considered medium threat by the mobile threat defense partner.|
|highSeverity|6|Device is considered high threat by the mobile threat defense partner.|
|unresponsive|7|Device is considered unresponsive by the mobile threat defense partner. The device health is not known.|
|compromised|8|Device is considered compromised by the Threat Defense partner. This means the device has an active Threat or Risk which cannot be easily remediated by the end user and the user should contact their IT Admin.|
|misconfigured|9|Device is considered misconfigured with the Threat Defense partner. This means the device is missing a required profile or configuration for the Threat Defense Partner to function properly and is thus threat or risk analysis is not able to complete.|




