---
title: "deviceEnrollmentType enum type"
description: "Possible ways of adding a mobile device to management."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceEnrollmentType enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible ways of adding a mobile device to management.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default value, enrollment type was not collected.|
|userEnrollment|1|User driven enrollment through BYOD channel.|
|deviceEnrollmentManager|2|User enrollment with a device enrollment manager account.|
|appleBulkWithUser|3|Apple bulk enrollment with user challenge. (DEP, Apple Configurator)|
|appleBulkWithoutUser|4|Apple bulk enrollment without user challenge. (DEP, Apple Configurator, Mobile Config)|
|windowsAzureADJoin|5|Windows 10 Azure AD Join.|
|windowsBulkUserless|6|Windows 10 Bulk enrollment through ICD with certificate.|
|windowsAutoEnrollment|7|Windows 10 automatic enrollment. (Add work account)|
|windowsBulkAzureDomainJoin|8|Windows 10 bulk Azure AD Join.|
|windowsCoManagement|9|Windows 10 Co-Management triggered by AutoPilot or Group Policy.|
|windowsAzureADJoinUsingDeviceAuth|10|Windows 10 Azure AD Join using Device Auth.|
|appleUserEnrollment|11|Device managed by Apple user enrollment|
|appleUserEnrollmentWithServiceAccount|12|Device managed by Apple user enrollment with service account|




