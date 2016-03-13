# contactFolder resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get contactFolder](../api/contactfolder_get.md) | [contactFolder](contactfolder.md) |Read properties and relationships of contactFolder object.|
|[Create contactFolder](../api/contactfolder_post_childfolders.md) |[contactFolder](contactfolder.md)| Create a new contactFolder by posting to the childFolders collection.|
|[List childFolders](../api/contactfolder_list_childfolders.md) |[contactFolder](contactfolder.md) collection| Get a contactFolder object collection.|
|[Create contact](../api/contactfolder_post_contacts.md) |[contact](contact.md)| Create a new contact by posting to the contacts collection.|
|[List contacts](../api/contactfolder_list_contacts.md) |[contact](contact.md) collection| Get a contact object collection.|
|[Create multiValueLegacyExtendedProperty](../api/contactfolder_post_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md)| Create a new multiValueLegacyExtendedProperty by posting to the multiValueExtendedProperties collection.|
|[List multiValueExtendedProperties](../api/contactfolder_list_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Get a multiValueLegacyExtendedProperty object collection.|
|[Create singleValueLegacyExtendedProperty](../api/contactfolder_post_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md)| Create a new singleValueLegacyExtendedProperty by posting to the singleValueExtendedProperties collection.|
|[List singleValueExtendedProperties](../api/contactfolder_list_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Get a singleValueLegacyExtendedProperty object collection.|
|[Update](../api/contactfolder_update.md) | [contactFolder](contactfolder.md)	|Update contactFolder object. |
|[Delete](../api/contactfolder_delete.md) | None |Delete contactFolder object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|string||
|id|string| Read-only.|
|parentFolderId|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|childFolders|[contactFolder](contactfolder.md) collection| Read-only. Nullable.|
|contacts|[contact](contact.md) collection| Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.contactfolder"
}-->

```json
{
  "displayName": "string",
  "id": "string (identifier)",
  "parentFolderId": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "contactFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->