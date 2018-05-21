---
author: rgregg
ms.author: rgregg
ms.date: 09/17/2017
title: BaseItemVersion
---
# BaseItemVersion resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **baseItemVersion** resource represents a previous version of an item or entity.


## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.baseItemVersion", "@type.aka": "oneDrive.baseItemVersion" } -->

```json
{
  "content": { "@odata.type": "Edm.Stream" },
  "id": "string",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "2016-01-01T15:20:01.125Z",
  "publication": { "@odata.type": "microsoft.graph.publicationFacet" }
}
```

## Properties

|      Property name       |                         Type                         |                               Description                               |
| :----------------------- | :--------------------------------------------------- | :---------------------------------------------------------------------- |
| **id**                   | string                                               | The ID of the version. Read-only.                                       |
| **lastModifiedBy**       | [IdentitySet](../resources/identitySet.md)           | Identity of the user which last modified the version. Read-only.        |
| **lastModifiedDateTime** | [DateTimeOffset](../resources/timestamp.md)          | Date and time the version was last modified. Read-only.                 |
| **publication**          | [PublicationFacet](../resources/publicationfacet.md) | Indicates the publication status of this particular version. Read-only. |


<!-- {
  "type": "#page.annotation",
  "description": "The version facet provides information about the properties of a file version.",
  "keywords": "version,versions,version-history,history",
  "section": "documentation",
  "tocPath": "Facets/Version"
} -->