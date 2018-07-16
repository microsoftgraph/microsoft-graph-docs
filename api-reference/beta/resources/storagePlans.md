---
author: psampath
ms.author: psampath
ms.date: 06/20/2018
title: Quota
---
# StoragePlans resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **storagePlans** resource provides information about the drive's storage quota plans.

### JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
   "@odata.type": "microsoft.graph.storagePlans",
} -->

```json
{
  "upgradeAvailable": true
}

```
## Properties

| Property name     | Type      | Description                                                             |
|:------------------|:----------|:----------------------------------------------------------------------- |
| upgradeAvailable  | Boolean   | Indicates if there are higher storage quota plans available. Read-only. |


<!-- {
  "type": "#page.annotation",
  "description": "storagePlans resource contains information about storage quota plans that make up the drive's storage space quota.",
  "keywords": "quota,plans,upgradeAvailable",
  "section": "documentation",
  "tocPath": "Resources/StoragePlans"
} -->

