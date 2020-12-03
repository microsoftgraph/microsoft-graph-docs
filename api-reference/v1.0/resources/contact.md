---
title: "contact resource type"
description: "A contact is an item in Outlook where you can organize and save information about the people and organizations you communicate with. Contacts are contained in contact folders."
author: "kevinbellinger"
localization_priority: Priority
ms.prod: "outlook"
doc_type: resourcePageType
---

# contact resource type

Namespace: microsoft.graph

A contact is an item in Outlook where you can organize and save information about the people and organizations you communicate with. Contacts are contained in contact folders.

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/webhooks).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, 
by providing a [delta](../api/contact-delta.md) function.


## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get contact](../api/contact-get.md) | [contact](contact.md) |Read properties and relationships of contact object.|
|[Create](../api/user-post-contacts.md) | [contact](contact.md) |Add a contact to the root Contacts folder or to the contacts endpoint of another contact folder.|
|[Update](../api/contact-update.md) | [contact](contact.md) |Update contact object. |
|[Delete](../api/contact-delete.md) | None |Delete contact object. |
|[delta](../api/contact-delta.md)|[contact](contact.md) collection| Get a set of contacts that have been added, deleted, or updated in a specified folder.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties in a new or existing instance of a resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension object or objects identified by name or fully qualified name.|
|**Schema extensions**| | |
|[Add schema extension values](/graph/extensibility-schema-groups) || Create a schema extension definition and then use it to add custom typed data to a resource.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[contact](contact.md)  |Create one or more single-value extended properties in a new or existing contact.   |
|[Get contact with single-value extended property](../api/singlevaluelegacyextendedproperty-get.md)  | [contact](contact.md) | Get contacts that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [contact](contact.md) | Create one or more multi-value extended properties in a new or existing contact.  |
|[Get contact with multi-value extended property](../api/multivaluelegacyextendedproperty-get.md)  | [contact](contact.md) | Get a contact that contains a multi-value extended property by using `$expand`. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assistantName|String|The name of the contact's assistant.|
|birthday|DateTimeOffset|The contact's birthday. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|businessAddress|[PhysicalAddress](physicaladdress.md)|The contact's business address.|
|businessHomePage|String|The business home page of the contact.|
|businessPhones|String collection|The contact's business phone numbers.|
|categories|String collection|The categories associated with the contact.|
|changeKey|String|Identifies the version of the contact. Every time the contact is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object.|
|children|String collection|The names of the contact's children.|
|companyName|String|The name of the contact's company.|
|createdDateTime|DateTimeOffset|The time the contact was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|department|String|The contact's department.|
|displayName|String|The contact's display name. You can specify the display name in a [create](../api/user-post-contacts.md) or [update](../api/contact-update.md) operation. Note that later updates to other properties may cause an automatically generated value to overwrite the displayName value you have specified. To preserve a pre-existing value, always include it as displayName in an [update](../api/contact-update.md) operation.|
|emailAddresses|[EmailAddress](emailaddress.md) collection|The contact's email addresses.|
|fileAs|String|The name the contact is filed under.|
|generation|String|The contact's generation.|
|givenName|String|The contact's given name.|
|homeAddress|[PhysicalAddress](physicaladdress.md)|The contact's home address.|
|homePhones|String collection|The contact's home phone numbers.|
|id|String|The contact's unique identifier. Read-only.|
|imAddresses|String collection|The contact's instant messaging (IM) addresses.|
|initials|String|The contact's initials.|
|jobTitle|String|The contact’s job title.|
|lastModifiedDateTime|DateTimeOffset|The time the contact was modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|manager|String|The name of the contact's manager.
|middleName|String|The contact's middle name.|
|mobilePhone|String|The contact's mobile phone number.|
|nickName|String|The contact's nickname.|
|officeLocation|String|The location of the contact's office.|
|otherAddress|[PhysicalAddress](physicaladdress.md)|Other addresses for the contact.|
|parentFolderId|String|The ID of the contact's parent folder.|
|personalNotes|String|The user's notes about the contact.|
|profession|String|The contact's profession.|
|spouseName|String|The name of the contact's spouse/partner.|
|surname|String|The contact's surname.|
|title|String|The contact's title.|
|yomiCompanyName|String|The phonetic Japanese company name of the contact.|
|yomiGivenName|String|The phonetic Japanese given name (first name) of the contact.|
|yomiSurname|String|The phonetic Japanese surname (last name)  of the contact.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for the contact. Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the contact. Read-only. Nullable.|
|photo|[profilePhoto](profilephoto.md)| Optional contact picture. You can get or set a photo for a contact.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the contact. Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.outlookItem",
  "openType": true,
  "optionalProperties": [
    "extensions",
    "multiValueExtendedProperties",
    "photo",
    "singleValueExtendedProperties"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.contact",
  "@odata.annotations": [
    {
      "property": "extensions",
      "capabilities": {
        "changeTracking": false,
        "searchable": false
      }
    },
    {
      "property": "photo",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "expandable": false,
        "insertable": false,
        "searchable": false
      }
    }
  ]
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
  "yomiSurname": "string",

  "photo": { "@odata.type": "microsoft.graph.profilePhoto" }
}

```

## See also

- [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview)
- [Get incremental changes to messages in a folder](/graph/delta-query-messages)
- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "contact resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

