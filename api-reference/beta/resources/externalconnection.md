---
title: "externalConnection resource type"
description: "A connection is a logical container for your external content in Microsoft Graph"
localization_priority: Normal
author: "snlraju-msft"
ms.prod: "search"
doc_type: "resourcePageType"
---

# externalConnection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A logical container to add content from an external source into Microsoft Graph.

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Methods

| Method                                                           | Return Type                                   | Description |
|:-----------------------------------------------------------------|:----------------------------------------------|:--|
| [Create externalConnection](../api/external-post-connections.md) | externalConnection                            | Create a new externalConnection by posting to the connections collection. |
| [List externalConnections](../api/externalconnection-list.md)    | externalConnection collection                 | Get a externalConnection object collection. |
| [Get externalConnection](../api/externalconnection-get.md)       | externalConnection                            | Read properties and relationships of a externalConnection object. |
| [Update externalConnection](../api/externalconnection-update.md) | externalConnection                            | Update a externalConnection object. |
| [Delete externalConnection](../api/externalconnection-delete.md) | None                                          | Delete a externalConnection object. |
| [Create schema](../api/externalconnection-post-schema.md)        | None *or* [schema](schema.md)                 | Register connection schema. |
| [Get operation](../api/connectionoperation-get.md)               | [connectionOperation](connectionoperation.md) | Get the status of an asynchronous request to create the connection schema. |
| [Create externalItem](../api/externalconnection-put-items.md)    | [externalItem](externalitem.md)               | Create a new externalItem by posting to the items collection. |

## Properties

| Property      | Type                              | Description |
|:--------------|:----------------------------------|:------------|
| configuration | [configuration](configuration.md) | Specifies additional application IDs that are allowed to manage the connection and to index content in the connection. Optional. |
| description   | String                            | Description of the connection displayed in the Microsoft 365 admin center. Optional. |
| id            | String                            | Developer-provided unique ID of the connection within the Azure Active Directory tenant. Maximum length of 32 characters. Must only contain alphanumeric characters. Cannot begin with `Microsoft` or be one of the following values: `None`, `Directory`, `Exchange`, `ExchangeArchive`, `LinkedIn`, `Mailbox`, `MicrosoftSearch`, `OneDriveBusiness`, `SharePoint`, `Teams`, `Yammer`, `Connectors`. Required. |
| name          | String                            | The display name of the connection to be displayed in the Microsoft 365 admin center. Maximum length of 128 characters. Required. |
| state         | connectionState                   | Indicates the current state of the connection. Possible values are `draft`, `ready`, `obsolete`, and `limitExceeded`. Required. |

## Relationships

| Relationship | Type                                                     | Description |
|:-------------|:---------------------------------------------------------|:---|
| items        | [externalItem](externalitem.md) collection               | Read-only. Nullable. |
| operations   | [connectionOperation](connectionoperation.md) collection | Read-only. Nullable. |
| schema       | [schema](schema.md)                                      | Read-only. Nullable. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalConnection",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "configuration": {"@odata.type": "microsoft.graph.configuration"},
  "description": "String",
  "id": "String (identifier)",
  "name": "String",
  "state": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "connection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
