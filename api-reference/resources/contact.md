# contact resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get contact](../api/contact_get.md) | [contact](contact.md) |Read properties and relationships of contact object.|
|[Create extension](../api/contact_post_extensions.md) |[extension](extension.md)| Create a new extension by posting to the extensions collection.|
|[List extensions](../api/contact_list_extensions.md) |[extension](extension.md) collection| Get a extension object collection.|
|[Create multiValueLegacyExtendedProperty](../api/contact_post_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md)| Create a new multiValueLegacyExtendedProperty by posting to the multiValueExtendedProperties collection.|
|[List multiValueExtendedProperties](../api/contact_list_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Get a multiValueLegacyExtendedProperty object collection.|
|[Create singleValueLegacyExtendedProperty](../api/contact_post_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md)| Create a new singleValueLegacyExtendedProperty by posting to the singleValueExtendedProperties collection.|
|[List singleValueExtendedProperties](../api/contact_list_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Get a singleValueLegacyExtendedProperty object collection.|
|[Update](../api/contact_update.md) | [contact](contact.md)	|Update contact object. |
|[Delete](../api/contact_delete.md) | None |Delete contact object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assistantName|string||
|birthday|[dateTimeOffset](datetimeoffset.md)||
|businessAddress|[physicalAddress](physicaladdress.md)||
|businessHomePage|string||
|businessPhones|string collection||
|categories|string collection||
|changeKey|string||
|children|string collection||
|companyName|string||
|createdDateTime|[dateTimeOffset](datetimeoffset.md)||
|department|string||
|displayName|string||
|emailAddresses|[emailAddress](emailaddress.md) collection||
|fileAs|string||
|flag|[followupFlag](followupflag.md)||
|generation|string||
|givenName|string||
|homeAddress|[physicalAddress](physicaladdress.md)||
|homePhones|string collection||
|id|string| Read-only.|
|imAddresses|string collection||
|initials|string||
|jobTitle|string||
|lastModifiedDateTime|[dateTimeOffset](datetimeoffset.md)||
|manager|string||
|middleName|string||
|mobilePhone|string||
|nickName|string||
|officeLocation|string||
|otherAddress|[physicalAddress](physicaladdress.md)||
|parentFolderId|string||
|personalNotes|string||
|profession|string||
|spouseName|string||
|surname|string||
|title|string||
|yomiCompanyName|string||
|yomiGivenName|string||
|yomiSurname|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|extensions|[extension](extension.md) collection| Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Read-only. Nullable.|
|photo|[profilePhoto](profilephoto.md)| Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.contact"
}-->

```json
{
  "assistantName": "string",
  "birthday": "String (timestamp)",
  "businessAddress": {"@odata.type": "microsoft.graph.physicalAddress"},
  "businessHomePage": "string",
  "businessPhones": ["string"],
  "categories": ["string"],
  "changeKey": "string",
  "children": ["string"],
  "companyName": "string",
  "createdDateTime": "String (timestamp)",
  "department": "string",
  "displayName": "string",
  "emailAddresses": [{"@odata.type": "microsoft.graph.emailAddress"}],
  "fileAs": "string",
  "flag": {"@odata.type": "microsoft.graph.followupFlag"},
  "generation": "string",
  "givenName": "string",
  "homeAddress": {"@odata.type": "microsoft.graph.physicalAddress"},
  "homePhones": ["string"],
  "id": "string (identifier)",
  "imAddresses": ["string"],
  "initials": "string",
  "jobTitle": "string",
  "lastModifiedDateTime": "String (timestamp)",
  "manager": "string",
  "middleName": "string",
  "mobilePhone": "string",
  "nickName": "string",
  "officeLocation": "string",
  "otherAddress": {"@odata.type": "microsoft.graph.physicalAddress"},
  "parentFolderId": "string",
  "personalNotes": "string",
  "profession": "string",
  "spouseName": "string",
  "surname": "string",
  "title": "string",
  "yomiCompanyName": "string",
  "yomiGivenName": "string",
  "yomiSurname": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "contact resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->