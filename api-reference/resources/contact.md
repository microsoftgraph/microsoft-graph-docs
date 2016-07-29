# contact resource type

A contact is an item in Outlook where you can organize and save information about the people and organizations you communicate with. Contacts are contained in contact folders.

### Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get contact](../api/contact_get.md) | [contact](contact.md) |Read properties and relationships of contact object.|
|[Create](../api/user_post_contacts.md) | [contact](contact.md) |Add a contact to the root Contacts folder or to the contacts endpoint of another contact folder.|
|[List extensions](../api/contact_list_extensions.md) |[Extension](extension.md) collection| Get a Extension object collection.|
|[Update](../api/contact_update.md) | [contact](contact.md) |Update contact object. |
|[Delete](../api/contact_delete.md) | None |Delete contact object. |


### Properties
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
|emailAddresses|[EmailAddress](emailaddress.md) collection|The contact's email addresses.|
|fileAs|String|The name the contact is filed under.|
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
|phones|[Phone](phone.md) collection|The contact's phone numbers.|
|postalAddresses|[PhysicalAddress](physicaladdress.md) collection|The contact's physical addresses.|
|profession|String|The contact's profession.|
|spouseName|String|The name of the contact's spouse.|
|surname|String|The contact's surname.|
|title|String|The contact's title.|
|websites|[Website](website.md)|The contact's websites.|
|yomiCompanyName|String|The phonetic Japanese company name of the contact.|
|yomiGivenName|String|The phonetic Japanese given name (first name) of the contact.|
|yomiSurname|String|The phonetic Japanese surname (last name)  of the contact.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|extensions|[Extension](extension.md) collection| Read-only. Nullable.|
|photo|[profilePhoto](profilephoto.md)| Optional contact picture. You can get or set a photo for a contact.|


### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "extensions",    
    "photo"
  ],
  "keyProperty": "id",
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
  "phones": {"@odata.type": "microsoft.graph.phone"},
  "postalAddresses": {"@odata.type": "microsoft.graph.physicalAddress"},
  "profession": "string",
  "spouseName": "string",
  "surname": "string",
  "title": "string",
  "yomiCompanyName": "string",
  "yomiGivenName": "string",
  "yomiSurname": "string",
  "websites": [{"@odata.type": "microsoft.graph.website"}],
  "photo": { "@odata.type": "microsoft.graph.profilePhoto" }
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
