# agreement resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a tenant's customizable terms of use agreement that is created and managed with Azure Active Directory (Azure AD). You can use the following methods to create and manage the [Azure Active Directory Terms of Use feature](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-tou) according to your scenario.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create agreements](../api/agreement_post_agreements.md) | [agreement](agreement.md) | Create a new agreement by posting to the agreement collection. |
| [List agreements](../api/agreement_list.md) | [agreement](agreement.md) collection | Get an agreement object collection. |
| [Get agreement](../api/agreement_get.md) | [agreement](agreement.md) | Read properties and relationships of an agreement object. |
| [Update agreement](../api/agreement_update.md) | [agreement](agreement.md) | Update an agreement object. |
| [Delete agreement](../api/agreement_delete.md) | None | Delete an agreement object. |
<!--
| [Create agreementFile](../api/agreement_post_files.md) | [agreementFile](agreementfile.md) | Create a new agreementFile by posting to the files collection. |
| [List files](../api/agreement_list_files.md) | [agreementFile](agreementfile.md) collection | Get an agreementFile object collection. |
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
<!-- {
  "type": "#page.annotation",
  "description": "agreement resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
