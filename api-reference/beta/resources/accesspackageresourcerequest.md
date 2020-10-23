---
title: "accessPackageResourceRequest resource type"
description: "An access package resource request is a request to a add a resource to a catalog so that the roles of the resource can be used in one or more of the catalog's access packages."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# accessPackageResourceRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](entitlementmanagement-root.md), an access package resource request is a request to a add a resource to a catalog so that the roles of the resource can be used in one or more of the catalog's access packages.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List accessPackageResourceRequests](../api/accesspackageresourcerequest-list.md) | [accessPackageResourceRequest](accesspackageresourcerequest.md) collection | Retrieve a list of **accessPackageResourceRequest** objects. |
| [Create accessPackageResourceRequest](../api/accesspackageresourcerequest-post.md) | [accessPackageCatalog](accesspackageresourcerequest.md) | Create a new **accessPackageResourceRequest** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|catalogId|String|The unique ID of the access package catalog.|
|expirationDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String| Read-only.|
|isValidationOnly|Boolean|If set, does not add the resource.|
|justification|String|The requestor's justification for adding the resource.|
|requestState|String| The outcome of whether the service was able to add the resource to the catalog.  The value is `Delivered` if the resource was added. Read-Only.|
|requestStatus|String|Read-only.|
|requestType|String|Use `AdminAdd` to add a resource, if the caller is an administrator or resource owner. |

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageResource|[accessPackageResource](accesspackageresource.md)| Nullable.|
|requestor|[accessPackageSubject](accesspackagesubject.md)| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageResourceRequest",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "catalogId": "26ac0c0a-08bc-4a7b-a313-839f58044ba5",
  "expirationDateTime": "String (timestamp)",
  "id": "1fe272f0-d463-42aa-a9a8-b07ab50a1c4d",
  "isValidationOnly": false,
  "justification": "String",
  "requestState": "Delivered",
  "requestStatus": "Fulfilled",
  "requestType": "AdminAdd"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageResourceRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


