---
title: "agreementFile resource type"
description: "Represents a customizable terms of use agreement file that a tenant manages with Azure Active Directory (Azure AD)."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "governance"
author: raprakasMSFT
---

# agreementFile resource type

Namespace: microsoft.graph

Represents a customizable terms of use agreement file that a tenant manages with Azure Active Directory (Azure AD). It contains metadata about the agreement file (for example, the name, the language, and whether it is the default file).

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|fileData|[agreementFileData](agreementfiledata.md)|Data that represents the terms of use PDF document. Read-only.|
|fileName|String|Name of the agreement file (for example, TOU.pdf). Read-only.|
|id|String|The identifier of the agreement file. Read-only.|
|isDefault|Boolean|If none of the languages matches the client preference, indicates that this is the default agreement file. If none of the files are marked as default, the first one is treated as the default. Read-only.|
|language|String|The language of the agreement file in the format languagecode2-country/regioncode2. languagecode2 is a lowercase two-letter code derived from ISO 639-1. country/regioncode2 is derived from ISO 3166 and usually consists of two uppercase letters, or a BCP-47 language tag (for example, en-US). Read-only.|
|isMajorVersion|Boolean|Indicates whether the agreement file is a major version update. Major version updates invalidate the agreement's acceptances on the corresponding language. |
|createdDateTime|DateTimeOffset|The date time representing when the file was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
|displayName|String|Localized display name of the policy file of an agreement. The localized display name is shown to end users who view the agreement.

<!--
## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|localizations|[agreementFileLocalization](agreementfilelocalization.md) collection|The localized version of the agreement files attached to the agreement.|
-->

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agreementFile",
  "keyProperty": "id"
}-->

```json
{
  "fileData": {"@odata.type": "microsoft.graph.agreementFileData"},
  "fileName": "String",
  "id": "String (identifier)",
  "isDefault": true,
  "language": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "agreementFile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


