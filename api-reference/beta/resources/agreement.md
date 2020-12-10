---
title: "agreement resource type"
description: "Represents a tenant's customizable terms of use agreement that is created and managed with Azure Active Directory (Azure AD)."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "raprakasMSFT"
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
|displayName|String|Display name of the agreement. The display name is used for internal tracking of the agreement but is not shown to end users who view the agreement.|
|id|String| Read-only.|
|isPerDeviceAcceptanceRequired|Boolean|This setting enables you to require end users to accept this agreement on every device that they are accessing it from. The end user will be required to register their device in Azure AD, if they haven't already done so.|
|isViewingBeforeAcceptanceRequired|Boolean|Indicates whether the user has to expand the agreement before accepting.|
|termsExpiration|[termsExpiration](termsexpiration.md)| Expiration schedule and frequency of agreement for all users. |
|userReacceptRequiredFrequency|Duration|The duration after which the user must re-accept the terms of use. The value is represented in ISO 8601 format for durations.|


## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|acceptances|[agreementAcceptance](agreementacceptance.md) collection|Read-only. Information about acceptances of this agreement.|
|files|[agreementFileLocalization](agreementfilelocalization.md) collection| PDFs linked to this agreement. **Note:** This property is in the process of being deprecated. Use the  **file** property instead.|
|file|[agreementFile](agreementfile.md) | Default PDF linked to this agreement.|
|file/localizations|[agreementFileLocalization](agreementfilelocalization.md) collection|The localized versions of the agreement files attached to the agreement.|
|file/localizations/{localizationId}/versions|[agreementFileVersion](agreementfileversion.md) collection|The version history for the localized agreement file.|


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
  "id": "String (identifier)",
  "displayName": "MSGraph Sample",
  "isViewingBeforeAcceptanceRequired": true,
  "isPerDeviceAcceptanceRequired": false,
  "termsExpiration": {
    "startDateTime": "2018-10-01T00:00:00.0000000Z",
    "frequency": "PT1M"
  }
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


