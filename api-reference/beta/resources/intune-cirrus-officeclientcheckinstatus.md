---
title: "officeClientCheckinStatus resource type"
description: "Entity that describes  tenant check-in stats."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# officeClientCheckinStatus resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Entity that describes  tenant check-in stats.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|userPrincipalName|String|User principal name using the device.|
|deviceName|String|Device name trying to check-in.|
|devicePlatform|String|Device platform trying to check-in.|
|devicePlatformVersion|String|Device platform version trying to check-in.|
|wasSuccessful|Boolean|If the last checkin was successful.|
|userId|String|User identifier using the device.|
|checkinDateTime|DateTimeOffset|Last device check-in time in UTC.|
|errorMessage|String|Error message if any associated for the last checkin.|
|appliedPolicies|String collection|List of policies delivered to the device as last checkin.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.officeClientCheckinStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.officeClientCheckinStatus",
  "userPrincipalName": "String",
  "deviceName": "String",
  "devicePlatform": "String",
  "devicePlatformVersion": "String",
  "wasSuccessful": true,
  "userId": "String",
  "checkinDateTime": "String (timestamp)",
  "errorMessage": "String",
  "appliedPolicies": [
    "String"
  ]
}
```



