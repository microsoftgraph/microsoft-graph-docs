---
title: "officeUserCheckinSummary resource type"
description: "Entity that describes  tenant check-in stats."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# officeUserCheckinSummary resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Entity that describes  tenant check-in stats.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|succeededUserCount|Int32|Total successful user check ins for the last 3 months.|
|failedUserCount|Int32|Total failed user check ins for the last 3 months.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.officeUserCheckinSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.officeUserCheckinSummary",
  "succeededUserCount": 1024,
  "failedUserCount": 1024
}
```



