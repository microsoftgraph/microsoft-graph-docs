---
author: JeremyKelley
description: "The hashes resource groups available hashes into a single structure for an item."
ms.date: 09/10/2017
title: Hashes
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# hashes resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Groups available hashes into a single structure for an item.

> [!NOTE]
> Not all services provide a value for all hash properties listed. In OneDrive for Business and SharePoint Server 2016, **sha1Hash**, **crc32Hash**, and **sha256Hash** are not available. In OneDrive Personal, **quickXorHash** is not available.

## Properties

| Property         | Type   | Description                                                       |
|:-----------------|:-------|:------------------------------------------------------------------|
| **sha1Hash**     | String | SHA1 hash for the contents of the file (if available). Read-only. |
| **sha256Hash**   | String | SHA256 hash for the contents of the file (if available). Read-only. |
| **crc32Hash**    | String | The CRC32 value of the file (if available). Read-only.            |
| **quickXorHash** | String | A proprietary hash of the file that can be used to determine if the contents of the file have changed (if available). Read-only. |

> **Note:** In cases where the hash values are not available, the hash values on an item will be updated after the item is downloaded.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "sha1Hash", "crc32Hash", "quickXorHash" ],
  "@odata.type": "microsoft.graph.hashes"
}-->

```json
{
  "crc32Hash": "string (hex)",
  "sha1Hash": "string (hex)",
  "sha256Hash": "string (hex)",
  "quickXorHash": "string (base64)"
}
```

## See also

- For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).
- To calculate **quickXorHash** for a file, refer to the [QuickXorHash snippet](https://dev.onedrive.com/snippets/quickxorhash.htm).


<!--
{
  "type": "#page.annotation",
  "description": "The hashes facet provides hash identifiers for a file in OneDrive",
  "keywords": "hash,sha1,crc32,item,facet",
  "section": "documentation",
  "tocPath": "Facets/Hashes",
  "suppressions": []
}
-->


