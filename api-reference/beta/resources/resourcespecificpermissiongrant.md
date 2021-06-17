---
title: "resourceSpecificPermissionGrant resource type"
description: "Specifies the permission that a specific Azure AD app has."
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# resourceSpecificPermissionGrant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resourceSpecificPermissionGrant declares the permission that has been granted to a specific AzureAD app for an instance of a resource in Microsoft Graph.

## Methods

|  Method                                                                   |  Return Type                                                                     | Description                                                  | 
| :------------------------------------------------------------------------ | :------------------------------------------------------------------------------- | :----------------------------------------------------------- |
|[List permission grants of a chat](../api/chat-list-permissiongrants.md)   | [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) collection | List permissions that have been granted in a specific chat.  |
|[List permission grants of a group](../api/group-list-permissiongrants.md) | [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) collection | List permissions that have been granted in a specific group. |
|[List permission grants of a team](../api/team-list-permissiongrants.md)   | [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) collection | List permissions that have been granted in a specific team.  |

## Properties

| Property        | Type          | Description                                                                           |
| :-------------- | :------------ | :------------------------------------------------------------------------------------ |
| id              | string        | The unique identifier of the resource-specific permission grant. Read-only.           |
| deletedDateTime | dateTimeOffset| Not used.                                                                             |
| clientId        | string        | ID of the Azure AD app that has been granted access. Read-only.                            |
| clientAppId     | string        | ID of the service principal of the Azure AD app that has been granted access. Read-only.   |
| resourceAppId   | string        | ID of the Azure AD app that is hosting the resource. Read-only.                        |
| permissionType  | string        | The type of permission. Possible values are: `Application`, `Delegated`. Read-only. |
| permission      | string        | The name of the permission. Read-only.                                                |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.resourceSpecificPermissionGrant"
}-->

```json
{
  "id": "string (identifier)",
  "deletedDateTime": "dateTimeOffset",
  "clientId": "string",
  "clientAppId": "string",
  "resourceAppId": "string",
  "permissionType": "string",
  "permission": "string"
}
```


