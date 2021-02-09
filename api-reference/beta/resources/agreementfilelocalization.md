---
title: "agreementFileLocalization resource type"
description: "Represents a localized policy files of terms of use agreement in Azure Active Directory (Azure AD). It contains metadata about the agreement file (for example, the name, the language, and whether it is the default file)."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: raprakasMSFT
---

# agreementFileLocalization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a customizable terms of use agreement file that a tenant manages with Azure Active Directory (Azure AD). It contains metadata about the agreement file (for example, the name, the language, and whether it is the default file).

<!--
## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create agreementFileLocalization](../api/agreementfilelocalization-post-agreementfilelocalizations.md) | [agreementfilelocalization](agreementfilelocalization.md) | Create a new agreementFileLocalization. |
| [List agreementFileLocalizations](../api/agreementfilelocalization-list.md) | [agreementfilelocalization](agreementfilelocalization.md) collection | Get an agreementFileLocalization object collection. |
| [Get agreementFileLocalization](../api/agreementfilelocalization-get.md) | [agreementfilelocalization](agreementfilelocalization.md) | Read properties and relationships of an agreementFileLocalization object. |
| [List agreementFileVersions](../api/agreementfileversion-list.md) | [agreementfileversion](agreementfileversion.md) collection | Get an agreementFileVersion object collection. |
| [Get agreementFileVersion](../api/agreementfileversion-get.md) | [agreementfileversion](agreementfileversion.md) | Read properties and relationships of an agreementFileVersion object. |
-->

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|fileData|[agreementFileData](agreementfiledata.md)|Data representing the terms of use PDF document. Read-only.|
|fileName|String|Name of the agreement file (for example, TOU.pdf). Read-only.|
|id|String|Read-only.|
|isDefault|Boolean|Indicates whether this is the default agreement file if none of the cultures matches the client preference. If none of the files are marked as default, the first one will be treated as the default. Read-only.|
|language|String|Culture of the agreement file in the format languagecode2-country/regioncode2. languagecode2 is a lowercase two-letter code derived from ISO 639-1. country/regioncode2 is derived from ISO 3166 and usually consists of two uppercase letters, or a BCP-47 language tag (for example, en-US). Read-only.|
|isMajorVersion|Boolean|Indicates whether the agreement file is a major version update. Major version updates invalidate the agreement's acceptances on the corresponding language. |
|createdDateTime|DateTimeOffset|The date time representing when the file was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|

<!--
## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|versions|[agreementFileVersion](agreementfileversion.md) collection|The version history for the localized agreement file.|
-->

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.agreementFileLocalization"
}-->

```json
{
  "fileData": {"@odata.type": "microsoft.graph.agreementFileData"},
  "fileName": "String",
  "id": "String (identifier)",
  "isDefault": "Boolean",
  "language": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "agreementFileLocalization resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
