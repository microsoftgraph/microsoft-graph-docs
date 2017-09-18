---
author: rgregg
ms.author: rgregg
ms.date: 09/17/2017
---
# ListItemVersion resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **listItemVersion** resource represents a previous version of a [ListItem](listitem.md) resource.


## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.listItemVersion", "@type.aka": "oneDrive.baseItemVersion" } -->

```json
{
  "content": { "@odata.type": "Edm.Stream" },
  "fields": { "@odata.type": "microsoft.graph.fieldValueSet" },
  "id": "string",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "2016-01-01T15:20:01.125Z",
  "published": { "@odata.type": "microsoft.graph.publicationFacet" }
}
```

## Properties

|      Property name       |                         Type                         |                               Description                               |
| :----------------------- | :--------------------------------------------------- | :---------------------------------------------------------------------- |
| **id**                   | string                                               | The ID of the version. Read-only.                                       |
| **lastModifiedBy**       | [IdentitySet](../resources/identitySet.md)           | Identity of the user which last modified the version. Read-only.        |
| **lastModifiedDateTime** | [DateTimeOffset](../resources/timestamp.md)          | Date and time the version was last modified. Read-only.                 |
| **published**            | [PublicationFacet](../resources/publicationfacet.md) | Indicates the publication status of this particular version. Read-only. |


## Relationships

The following table defines the relationships that the **driveItemVersion** resource has to other resources.

| Relationship name |                      Type                      |                               Description                                |
| :---------------- | :--------------------------------------------- | :----------------------------------------------------------------------- |
| **fields**        | [FieldValueSet](../resources/fieldvalueset.md) | A collection of the fields and values for this version of the list item. |


<!-- {
  "type": "#page.annotation",
  "description": "The version facet provides information about the properties of a file version.",
  "keywords": "version,versions,version-history,history",
  "section": "documentation",
  "tocPath": "Facets/Version"
} -->