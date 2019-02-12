---
title: "edgeSearchEngineCustom resource type"
description: "Allows IT admins to set a custom default search engine for MDM-Controlled devices."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# edgeSearchEngineCustom resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Allows IT admins to set a custom default search engine for MDM-Controlled devices.


Inherits from [edgeSearchEngineBase](../resources/intune-deviceconfig-edgesearchenginebase.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|edgeSearchEngineOpenSearchXmlUrl|String|Points to a https link containing the OpenSearch xml file that contains, at minimum, the short name and the URL to the search Engine.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.edgeSearchEngineCustom"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.edgeSearchEngineCustom",
  "edgeSearchEngineOpenSearchXmlUrl": "String"
}
```




