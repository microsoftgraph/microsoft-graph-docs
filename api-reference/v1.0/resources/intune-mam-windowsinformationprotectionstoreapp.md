---
title: "windowsInformationProtectionStoreApp resource type"
description: "Store App for Windows information protection"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# windowsInformationProtectionStoreApp resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Store App for Windows information protection

Inherits from [windowsInformationProtectionApp](../resources/intune-mam-windowsinformationprotectionapp.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|App display name. Inherited from [windowsInformationProtectionApp](../resources/intune-mam-windowsinformationprotectionapp.md)|
|description|String|The app's description. Inherited from [windowsInformationProtectionApp](../resources/intune-mam-windowsinformationprotectionapp.md)|
|publisherName|String|The publisher name Inherited from [windowsInformationProtectionApp](../resources/intune-mam-windowsinformationprotectionapp.md)|
|productName|String|The product name. Inherited from [windowsInformationProtectionApp](../resources/intune-mam-windowsinformationprotectionapp.md)|
|denied|Boolean|If true, app is denied protection or exemption. Inherited from [windowsInformationProtectionApp](../resources/intune-mam-windowsinformationprotectionapp.md)|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsInformationProtectionStoreApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionStoreApp",
  "displayName": "String",
  "description": "String",
  "publisherName": "String",
  "productName": "String",
  "denied": true
}
```



