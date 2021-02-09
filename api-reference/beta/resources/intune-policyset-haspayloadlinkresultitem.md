---
title: "hasPayloadLinkResultItem resource type"
description: "A class containing the result of HasPayloadLinks action."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# hasPayloadLinkResultItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the result of HasPayloadLinks action.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|payloadId|String|Key of the Payload, In the format of Guid.|
|hasLink|Boolean|Indicate whether a payload has any link or not.|
|error|String|Exception information indicates if check for this item was successful or not.Empty string for no error.|
|sources|[deviceAndAppManagementAssignmentSource](../resources/intune-shared-deviceandappmanagementassignmentsource.md) collection|The reason where the link comes from.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.hasPayloadLinkResultItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hasPayloadLinkResultItem",
  "payloadId": "String",
  "hasLink": true,
  "error": "String",
  "sources": [
    "String"
  ]
}
```




