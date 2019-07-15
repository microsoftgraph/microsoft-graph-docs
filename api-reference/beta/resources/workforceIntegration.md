---
title: "workforceintegration resource type"
description: "A workforce integration is a config entity for a team integration with an external workforce management system."
author: "aaku"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# workforceintegration resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A workforce integration is a config entity for a team integration with an external workforce management system.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create workforce integration](../api/workforceintegrations-post.md) | [workforceintegration](workforceintegration.md) | Create a new `workforceintegration`.|
|[List workforce integrations](../api/workforceintegrations-list.md) | [workforceintegration](workforceintegration.md) collection | Get the list of `workforceintegration` associated with this team.|
|[Get workforce integration](../api/workforceintegrations-get.md) | [workforceintegration](workforceintegration.md) | Get a `workforceintegration` by ID.|
|[Update workforce integration](../api/workforceintegrations-patch.md) | [workforceintegration](workforceintegration.md) | Update a `workforceintegration`.|
|[Delete workforce integration](../api/workforceintegrations-delete.md) | None | Delete a `workforceintegration` from the team.|

|Operation|Supported|Method        |Success   |Notes               |
|---------|:-------:|--------------|----------|--------------------|
|List     |✓        |`GET`         |`200`     | No filters.        |
|Get      |✓       |`GET`         |`200`     |                    |
|Create   |✓       |`POST`        |`201`     |                    |
|Update   |✓       |`PATCH`         |`204`     |                     |
|Delete   |✓        |`DELETE`      |`204`     |                    |

## Properties
|Name          |Type           |Description                                                                                                                                      |
|--------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| id			        |`string`  |Id of the `workforceIntegration`.|
| apiVersion 	|`int`    | The integration api schema version the `workforceIntegration` is compatible with.|
| encryption 		        |`self.workforceIntegrationEncryption`  | The encryption information for the `workforceIntegration`.    |
| url       |`string`    | The URL where the `workforceIntegration` exist.                                             |
| supports   |`self.workforceIntegrationSupportedEntities`  | Which entity changes are supported by the `workforceIntegration`.   |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workforceintegration"
}-->

```json
{
      "id": "c5d0c76b-80c4-481c-be50-923cd8d680a1",
      "displayName": "KronosWorkforceIntegration",
      "apiVersion": 1,
      "isActive": true,
      "encryption": {
        "protocol": "sharedSecret",
        "secret": null
      },
      "url": "https://kronosWorkforceIntegration.com/Contoso/",
      "supports": "shift"
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "workforceintegration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
