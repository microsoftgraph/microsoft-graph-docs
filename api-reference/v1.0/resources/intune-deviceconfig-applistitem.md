---
title: "appListItem resource type"
description: "Represents an app in the list of managed applications"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# appListItem resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an app in the list of managed applications

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The application name|
|publisher|String|The publisher of the application|
|appStoreUrl|String|The Store URL of the application|
|appId|String|The application or bundle identifier of the application|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appListItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appListItem",
  "name": "String",
  "publisher": "String",
  "appStoreUrl": "String",
  "appId": "String"
}
```




