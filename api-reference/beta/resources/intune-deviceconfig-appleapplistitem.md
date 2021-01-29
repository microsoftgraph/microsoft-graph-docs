---
title: "appleAppListItem resource type"
description: "Represents an app in the list of managed Apple applications"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# appleAppListItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an app in the list of managed Apple applications


Inherits from [appListItem](../resources/intune-deviceconfig-applistitem.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The application name Inherited from [appListItem](../resources/intune-deviceconfig-applistitem.md)|
|publisher|String|The publisher of the application Inherited from [appListItem](../resources/intune-deviceconfig-applistitem.md)|
|appStoreUrl|String|The Store URL of the application Inherited from [appListItem](../resources/intune-deviceconfig-applistitem.md)|
|appId|String|The application or bundle identifier of the application Inherited from [appListItem](../resources/intune-deviceconfig-applistitem.md)|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appleAppListItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appleAppListItem",
  "name": "String",
  "publisher": "String",
  "appStoreUrl": "String",
  "appId": "String"
}
```




