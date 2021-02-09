---
title: "directoryObjectPartnerReference resource type"
description: "Represents a reference to a directory object in a partner tenant. Inherits from directoryObject."
author: "keylimesoda"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# directoryObjectPartnerReference resource type

Namespace: microsoft.graph

Represents a reference to a directory object in a partner organization. Inherits from [directoryObject](/graph/api/resources/directoryobject?view=graph-rest-v1.0).

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|description|String| Description of the object returned. Read-only. |
|displayName|String| Name of directory object being returned, like group or application. Read-only. |
|externalPartnerTenantId|Guid| The tenant identifier for the partner tenant. Read-only. |
|id|String| The unique identifier for the resource. Inherited from [directoryObject](/graph/api/resources/directoryobject?view=graph-rest-v1.0). Read-only. |
|objectType|String| The type of the referenced object in the partner tenant. Read-only. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.directoryObjectPartnerReference"
}-->

```json
{
  "description": "string ",
  "displayName": "string",
  "externalPartnerTenantId": "string (identifier)",
  "id": "string (identifier)",
  "objectType": "string"
}
```

## See also

- [Get directory objects from a list of ids](../api/directoryobject-getbyids.md)

<!-- uuid: fbec8cd7-cfe4-431d-87fc-d102cd2841a4
2018-12-06 02:01:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "directoryObjectPartnerReference resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
