---
title: "edgeSearchEngine resource type"
description: "Allows IT admins to set a predefined default search engine for MDM-Controlled devices."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# edgeSearchEngine resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Allows IT admins to set a predefined default search engine for MDM-Controlled devices.


Inherits from [edgeSearchEngineBase](../resources/intune-deviceconfig-edgesearchenginebase.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|edgeSearchEngineType|[edgeSearchEngineType](../resources/intune-deviceconfig-edgesearchenginetype.md)|Allows IT admins to set a predefined default search engine for MDM-Controlled devices. Possible values are: `default`, `bing`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.edgeSearchEngine"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.edgeSearchEngine",
  "edgeSearchEngineType": "String"
}
```




