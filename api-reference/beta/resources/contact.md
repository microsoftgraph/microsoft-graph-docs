# contact resource type

A contact is an item in Outlook where you can organize and save information about the people and organizations you communicate with. Contacts are contained in contact folders.

## Delta query support

This resource supports [delta query](../../../concepts/delta_query_overview.md) to track incremental additions, deletions, and updates, 
by providing a [delta](../api/contact_delta.md) function.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "extensions",
    "multiValueExtendedProperties",
    "photo",
    "singleValueExtendedProperties"
  ],
  "@odata.type": "microsoft.graph.contact"
}-->

```json
{
  "assistantName": "string",
  "birthday": "String (timestamp)",
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
  "gender": "string",
  "generation": "string",
  "givenName": "string",
  "id": "string (identifier)",
  "imAddresses": ["string"],
  "initials": "string",
  "jobTitle": "string",
  "lastModifiedDateTime": "String (timestamp)",
  "manager": "string",
  "middleName": "string",
  "nickName": "string",
  "officeLocation": "string",
  "parentFolderId": "string",
  "personalNotes": "string",
  "phones": [{"@odata.type": "microsoft.graph.phone"}],
  "postalAddresses": [{"@odata.type": "microsoft.graph.physicalAddress"}],
  "profession": "string",
  "spouseName": "string",
  "surname": "string",
  "title": "string",
  "websites": [{"@odata.type": "microsoft.graph.website"}],
  "weddingAnniversary": "date",
  "yomiCompanyName": "string",
  "yomiGivenName": "string",
  "yomiSurname": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assistantName|String|The name of the contact's assistant.|
|birthday|DateTimeOffset|The contact's birthday. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|categories|String collection|The categories associated with the contact.|
|changeKey|String|Identifies the version of the contact. Every time the contact is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object.|
|children|String collection|The names of the contact's children.|
|companyName|String|The name of the contact's company.|
|createdDateTime|DateTimeOffset|The time the contact was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|department|String|The contact's department.|
|displayName|String|The contact's display name.|
|emailAddresses|[emailAddress](emailaddress.md) collection|The contact's email addresses.|
|fileAs|String|The name the contact is filed under.|
|flag|[followupFlag](followupflag.md)|The flag value that indicates the status, start date, due date, or completion date for the contact. |
|gender |String |The contact's gender. |
|generation|String|The contact's generation.|
|givenName|String|The contact's given name.|
|id|String|The contact's unique identifier. Read-only.|
|imAddresses|String collection|The contact's instant messaging (IM) addresses.|
|initials|String|The contact's initials.|
|jobTitle|String|The contact’s job title.|
|lastModifiedDateTime|DateTimeOffset|The time the contact was modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|manager|String|The name of the contact's manager.
|middleName|String|The contact's middle name.|
|nickName|String|The contact's nickname.|
|officeLocation|String|The location of the contact's office.|
|parentFolderId|String|The ID of the contact's parent folder.|
|personalNotes|String|The user's notes about the contact.|
|phones |[phone](phone.md) collection |Phone numbers associated with the contact, for example, home phone, mobile phone, and business phone. |
|postalAddresses |[physicalAddress](physicalAddress.md) collection |Addresses associated with the contact, for example, home address and business address. |
|profession|String|The contact's profession.|
|spouseName|String|The name of the contact's spouse.|
|surname|String|The contact's surname.|
|title|String|The contact's title.|
|websites |[website](website.md) collection|Web sites associated with the contact. |
|weddingAnniversary |Date |The contact's wedding anniversary. |
|yomiCompanyName|String|The phonetic Japanese company name of the contact.|
|yomiGivenName|String|The phonetic Japanese given name (first name) of the contact.|
|yomiSurname|String|The phonetic Japanese surname (last name)  of the contact.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|extensions|[extension](extension.md) collection|The collection of open type data extensions defined for the contact. Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the contact. Read-only. Nullable.|
|photo|[photo](profilephoto.md)| Optional contact picture. You can get or set a photo for a contact.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the contact. Read-only. Nullable.|


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get contact](../api/contact_get.md) | [contact](contact.md) |Read properties and relationships of contact object.|
|[Create](../api/user_post_contacts.md) | [contact](contact.md) |Add a contact to the root Contacts folder or to the contacts endpoint of another contact folder.|
|[Update](../api/contact_update.md) | [contact](contact.md) |Update contact object. |
|[Delete](../api/contact_delete.md) | None |Delete contact object. |
|[delta](../api/contact_delta.md)|[contact](contact.md) collection| Get a set of contacts that have been added, deleted, or updated in a specified folder.|
|**Data extensions**| | |
|[Create data extension](../api/opentypeextension_post_opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open type data extension and add custom properties in a new or existing instance of a resource.|
|[Get data extension](../api/opentypeextension_get.md) |[openTypeExtension](opentypeextension.md) collection| Get an **openTypeExtension** object or objects identified by name or fully qualified name.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty_post_singlevalueextendedproperties.md) |[contact](contact.md)  |Create one or more single-value extended properties in a new or existing contact.   |
|[Get contact with single-value extended property](../api/singlevaluelegacyextendedproperty_get.md)  | [contact](contact.md) | Get contacts that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty_post_multivalueextendedproperties.md) | [contact](contact.md) | Create one or more multi-value extended properties in a new or existing contact.  |
|[Get contact with multi-value extended property](../api/multivaluelegacyextendedproperty_get.md)  | [contact](contact.md) | Get a contact that contains a multi-value extended property by using `$expand`. |



<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "contact resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->