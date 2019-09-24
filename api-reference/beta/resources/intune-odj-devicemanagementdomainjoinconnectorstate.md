---
title: "deviceManagementDomainJoinConnectorState enum type"
description: "The ODJ request states."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: enumPageType
---

# deviceManagementDomainJoinConnectorState enum type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The ODJ request states.

## Members
|Member|Value|Description|
|:---|:---|:---|
|active|0|Connector is actively pinging Intune.|
|error|1|There is no heart-beat from connector from last one hour.|
|inactive|2|There is no heart-beat from connector from last 5 days.|



