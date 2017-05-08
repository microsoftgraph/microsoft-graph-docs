# contactFolder resource type

A folder that contains contacts.

This resource supports using [delta query](../../../concepts/delta_query_overview.md) to track incremental additions, deletions, and updates, 
by providing a [delta](../api/contactfolder_delta.md) function.


## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get contactFolder](../api/contactfolder_get.md) | [contactFolder](contactfolder.md) |Get a contact folder by using the contact folder ID.|
|[Update](../api/contactfolder_update.md) | [contactFolder](contactfolder.md) |Update contactFolder object. |
|[Delete](../api/contactfolder_delete.md) | None |Delete contactFolder object. |
|[List childFolders](../api/contactfolder_list_childfolders.md) |[ContactFolder](contactfolder.md) collection| Get a collection of child folders under the specified contact folder.|
|[Create child contactFolder](../api/contactfolder_post_childfolders.md) |[ContactFolder](contactfolder.md)| Create a new contactFolder as a child of a specified folder.|
|[delta](../api/contact_delta.md)|[contact](contact.md) collection| Get a set of contact folders that have been added, deleted, or removed from the user's mailbox.|
|[List contacts in folder](../api/contactfolder_list_contacts.md) |[Contact](contact.md) collection| Get a contact collection from the default Contacts folder of the signed-in user (`.../me/contacts`), or from the specified contact folder.|
|[Create contact in folder](../api/contactfolder_post_contacts.md) |[Contact](contact.md)| Add a contact to the root Contacts folder or to the `contacts` endpoint of another contact folder.|
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty_post_singlevalueextendedproperties.md) |[contactFolder](contactFolder.md)  |Create one or more single-value extended properties in a new or existing contactFolder.   |
|[Get contactFolder with single-value extended property](../api/singlevaluelegacyextendedproperty_get.md)  | [contactFolder](contactFolder.md) | Get contactFolders that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty_post_multivalueextendedproperties.md) | [contactFolder](contactFolder.md) | Create one or more multi-value extended properties in a new or existing contactFolder.  |
|[Get contactFolder with multi-value extended property](../api/multivaluelegacyextendedproperty_get.md)  | [contactFolder](contactFolder.md) | Get a contactFolder that contains a multi-value extended property by using `$expand`. |



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|The folder's display name.|
|id|String|Unique identifier of the contact folder. Read-only.|
|parentFolderId|String|The ID of the folder's parent folder.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|childFolders|[ContactFolder](contactfolder.md) collection|The collection of child folders in the folder. Navigation property. Read-only. Nullable.|
|contacts|[Contact](contact.md) collection|The contacts in the folder. Navigation property. Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the contactFolder. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the contactFolder. Read-only. Nullable.|


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "childFolders",
    "contacts",
    "multiValueExtendedProperties",
    "singleValueExtendedProperties"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.contactFolder"
}-->

```json
{
  "displayName": "string",
  "id": "string (identifier)",
  "parentFolderId": "string"
}

```

## See also

- [Use delta query to track changes in Microsoft Graph data](../../../concepts/delta_query_overview.md)
- [Get incremental changes to messages in a folder](../../../concepts/delta_query_messages.md)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "contactFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
