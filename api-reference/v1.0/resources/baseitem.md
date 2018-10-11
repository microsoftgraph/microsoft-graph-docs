---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: BaseItem
---
# BaseItem resource type

The **baseItem** resource is an abstract resource that contains a common set of properties shared among several other resources types.
Resources that derive from **baseItem** include:

* [drive](drive.md)
* [driveItem](driveitem.md)
* [site](site.md)
* [sharedDriveItem](shareddriveitem.md)

## JSON representation

Here is a JSON representation of a **baseItem** resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "createdBy", "lastModifiedBy", "description", "parentReference", "webUrl" ],
  "keyProperty": "id",
  "abstract": true,
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.baseItem"
}-->

```json
{
  "id": "string (identifier)",
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "createdDateTime": "datetime",
  "description": "string",
  "eTag": "string",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "datetime",
  "name": "string",
  "parentReference": { "@odata.type": "microsoft.graph.itemReference" },
  "webUrl": "url"
}
```

## Properties

| Property             | Type              | Description                                                                            |
| :------------------- | :---------------- | :------------------------------------------------------------------------------------- |
| id                   | string            | The unique identifier of the drive. Read-only.                                         |
| createdBy            | [identitySet][]   | Identity of the user, device, or application which created the item. Read-only.        |
| createdDateTime      | dateTimeOffset    | Date and time of item creation. Read-only.                                             |
| description          | String            | Provides a user-visible description of the item. Optional.                             |
| eTag                 | string            | ETag for the item. Read-only.                                                          |
| lastModifiedBy       | [identitySet][]   | Identity of the user, device, and application which last modified the item. Read-only. |
| lastModifiedDateTime | dateTimeOffset    | Date and time the item was last modified. Read-only.                                   |
| name                 | string            | The name of the item. Read-write.                                                      |
| parentReference      | [itemReference][] | Parent information, if the item has a parent. Read-write.                              |
| webUrl               | string (url)      | URL that displays the resource in the browser. Read-only.                              |

## Relationships

| Relationship       | Type     | Description
|:-------------------|:---------|:---------------------------------------------
| createdByUser      | [user][] | Identity of the user who created the item. Read-only.
| lastModifiedByUser | [user][] | Identity of the user who last modified the item. Read-only.

[identitySet]: identityset.md
[itemReference]: itemreference.md
[user]: user.md

## Remarks

The `baseItem` type is not expected to be used directly.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/BaseItem"
} -->
