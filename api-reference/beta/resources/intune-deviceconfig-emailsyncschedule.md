---
title: "emailSyncSchedule enum type"
description: "Possible values for email sync schedule."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# emailSyncSchedule enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for email sync schedule.

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|User Defined, default value, no intent.|
|asMessagesArrive|1|Sync as messages arrive.|
|manual|2|Sync manually.|
|fifteenMinutes|3|Sync every fifteen minutes.|
|thirtyMinutes|4|Sync every thirty minutes.|
|sixtyMinutes|5|Sync every sixty minutes.|
|basedOnMyUsage|6|Sync based on my usage.|




