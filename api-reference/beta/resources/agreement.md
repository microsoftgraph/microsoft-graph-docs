---
title: "agreement resource type"
description: "Represents a tenant's customizable terms of use agreement that is created and managed with Azure Active Directory (Azure AD). You can use the following methods to create and manage the Azure Active Directory Terms of Use feature according to your scenario."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: ""
---

# agreement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tenant's customizable terms of use agreement that is created and managed with Azure Active Directory (Azure AD). You can use the following methods to create and manage the [Azure Active Directory Terms of Use feature](/azure/active-directory/active-directory-tou) according to your scenario.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create agreements](../api/agreement-post-agreements.md) | [agreement](agreement.md) | Create a new agreement by posting to the agreement collection. |
| [List agreements](../api/agreement-list.md) | [agreement](agreement.md) collection | Get an agreement object collection. |
| [Get agreement](../api/agreement-get.md) | [agreement](agreement.md) | Read properties and relationships of an agreement object. |
| [Update agreement](../api/agreement-update.md) | [agreement](agreement.md) | Update an agreement object. |
| [Delete agreement](../api/agreement-delete.md) | None | Delete an agreement object. |
<!--
| [Create agreementFile](../api/agreement-post-files.md) | [agreementFile](agreementfile.md) | Create a new agreementFile by posting to the files collection. |
| [List files](../api/agreement-list-files.md) | [agreementFile](agreementfile.md) collection | Get an agreementFile object collection. |
-->

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|Display name of the agreement.|
|id|String| Read-only.|
|isViewingBeforeAcceptanceRequired|Boolean|Indicates whether the user has to expand and view the agreement before accepting.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|files|[agreementFile](agreementfile.md) collection|Read-only. PDFs linked to this agreement.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.agreement"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "isViewingBeforeAcceptanceRequired": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "agreement resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
