---
title: "passwordAuthenticationMethod resource type"
description: "A representation of a password registered to a user."
localization_priority: Normal
author: "mmcla"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# passwordAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of a user's password. For security, the password itself will never be returned in the object, but action can be taken to reset a password.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[List passwordAuthenticationMethods](../api/authentication-list-passwordmethods.md) | [passwordAuthenticationMethod](passwordauthenticationmethod.md) collection | Read the properties and relationships of all of this user's **passwordAuthenticationMethod** objects. |
|[Get passwordAuthenticationMethod](../api/passwordauthenticationmethod-get.md) | [passwordAuthenticationMethod](passwordauthenticationmethod.md) | Read the properties and relationships of a **passwordAuthenticationMethod** object. |
|[Reset password](../api/passwordauthenticationmethod-resetpassword.md)|None|Reset a user's password in the cloud and, if synced, on-premises.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|creationDateTime|DateTimeOffset|The date and time when this password was last updated. This property is currently not populated. Read-only. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String| The identifier of this password registered to this user. Read-only.|
|password|String|For security, the password is always returned as null from a LIST or GET operation.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.passwordAuthenticationMethod",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "creationDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "password": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "passwordAuthenticationMethod resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


