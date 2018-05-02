# agreementFile resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a customizable terms of use agreement file that a tenant manages with Azure Active Directory (Azure AD). It contains metadata about the agreement file (for example, the name, the language, and whether it is the default file).

<!--
## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get agreementFile](../api/agreementfile_get.md) | [agreementFile](agreementfile.md) | Read properties and relationships of an **agreementFile** object. |
| [Update](../api/agreementfile_update.md) | [agreementFile](agreementfile.md) | Update an **agreementFile** object. |
| [Delete](../api/agreementfile_delete.md) | None | Delete an **agreementFile** object. |
-->

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|fileData|[agreementFileData](agreementfiledata.md)|Data representing the terms of use PDF document. Read-only.|
|fileName|String|Name of the agreement file (for example, TOU.pdf). Read-only.|
|id|String|Read-only.|
|isDefault|Boolean|Indicates whether this is the default agreement file if none of the cultures matches the client preference. If none of the files are marked as default, the first one will be treated as the default. Read-only.|
|language|String|Culture of the agreement file in the format languagecode2-country/regioncode2. languagecode2 is a lowercase two-letter code derived from ISO 639-1. country/regioncode2 is derived from ISO 3166 and usually consists of two uppercase letters, or a BCP-47 language tag (for example, en-US). Read-only.|

## Relationships
None.


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.agreementFile"
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
<!-- {
  "type": "#page.annotation",
  "description": "agreementFile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
