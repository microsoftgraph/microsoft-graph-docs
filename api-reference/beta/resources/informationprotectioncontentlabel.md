---
title: "informationProtectionContentLabel resource type"
description: "Describes the informationProtectionContentLabel object that defines MIP metadata on an object."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# informationProtectionContentLabel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the informationProtectionContentLabel object that defines MIP metadata on an object. **informationProtectionContentLabel** is returned by the [extractLabel](../api/informationprotectionlabel-extractLabel.md) API resolve to the label that is currently applied to a file. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|assignmentMethod|String| Possible values are: `standard`, `privileged`, `auto`.|
|creationDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|label|[labelDetails](labeldetails.md)| Details on the label that is currently applied to the file. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.informationProtectionContentLabel",
  "baseType": null
}-->

```json
{
  "assignmentMethod": "String",
  "creationDateTime": "String (timestamp)",
  "label": {"@odata.type": "microsoft.graph.labelDetails"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "informationProtectionContentLabel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

