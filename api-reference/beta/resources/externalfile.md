---
title: "externalFile resource type"
description: "A file indexed via a Microsoft Search connection."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: ""
doc_type: "resourcePageType"
---

# externalFile resource type

Namespace: microsoft.graph

> [!CAUTION]
> The `externalFile` type has been deprecated. Developers should not use this type. External files may still be indexed using the [externalItem](externalitem.md) type.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An item indexed via a Microsoft Search [connection](externalconnection.md). This type derives from the [externalItem](externalitem.md) type.

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Methods

| Method                                                        | Return Type  | Description |
|:--------------------------------------------------------------|:-------------|:--|
| [Create externalFile](../api/externalconnection-put-items.md) | externalFile | Create an externalFile. |
| [Update externalFile](../api/externalitem-update.md)          | externalFile | Update an externalFile. |
| [Delete](../api/externalitem-delete.md)                       | None         | Delete an externalFile. |

## Properties

| Property         | Type                     | Description                    |
|:-----------------|:-------------------------|:-------------------------------|
| acl              | [acl](acl.md) collection | An array of access control entries. Each entry specifies the access granted to a user or group. Required. |
| content          | String                   | A plain-text representation of the contents of the item. The text in this property is full-text indexed. Optional. |
| id               | String                   | Developer-provided unique ID of the item within the containing [externalConnection](externalconnection.md). Must be alphanumeric and a maximum of 128 characters. Required. |
| createdBy        | String                   | The name of the user that created the file. |
| createdDateTime  | DateTimeOffset           | The date and time that the file was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'` |
| extension        | String                   | The file extension.            |
| lastModifiedBy   | String                   | The name of the user that last modified the file. |
| modifiedDateTime | DateTimeOffset           | The date and time that the file was last modified. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'` |
| name             | String                   | The file name. Required.       |
| size             | Int64                    | The size of the file in bytes. |
| title            | String                   | The title of the file.         |
| url              | String                   | The URL to access the file. Required. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalFile",
  "baseType": "microsoft.graph.externalItem"
}-->

```json
{
  "acl": [{"@odata.type": "microsoft.graph.acl"}],
  "content": "String",
  "id": "String (identifier)",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "extension": "String",
  "lastModifiedBy": "String",
  "modifiedDateTime": "String (timestamp)",
  "name": "String",
  "size": 1024,
  "title": "String",
  "url": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "externalFile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


