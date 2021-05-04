---
title: "configManagerCollection resource type"
description: "A ConfigManager defined collection of devices or users."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# configManagerCollection resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A ConfigManager defined collection of devices or users.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List configManagerCollections](../api/intune-partnerintegration-configmanagercollection-list.md)|[configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md) collection|List properties and relationships of the [configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md) objects.|
|[Get configManagerCollection](../api/intune-partnerintegration-configmanagercollection-get.md)|[configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md)|Read properties and relationships of the [configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md) object.|
|[Create configManagerCollection](../api/intune-partnerintegration-configmanagercollection-create.md)|[configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md)|Create a new [configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md) object.|
|[Delete configManagerCollection](../api/intune-partnerintegration-configmanagercollection-delete.md)|None|Deletes a [configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md).|
|[Update configManagerCollection](../api/intune-partnerintegration-configmanagercollection-update.md)|[configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md)|Update the properties of a [configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md) object.|
|[getPolicySummary function](../api/intune-partnerintegration-configmanagercollection-getpolicysummary.md)|[configManagerPolicySummary](../resources/intune-partnerintegration-configmanagerpolicysummary.md)|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key for the ConfigManager Collection.|
|displayName|String|The DisplayName.|
|collectionIdentifier|String|The collection identifier in SCCM.|
|hierarchyName|String|The HierarchyName.|
|hierarchyIdentifier|String|The Hierarchy Identifier.|
|createdDateTime|DateTimeOffset|The created date.|
|lastModifiedDateTime|DateTimeOffset|The last modified date.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configManagerCollection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configManagerCollection",
  "id": "String (identifier)",
  "displayName": "String",
  "collectionIdentifier": "String",
  "hierarchyName": "String",
  "hierarchyIdentifier": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```




