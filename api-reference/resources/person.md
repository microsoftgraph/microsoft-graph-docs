# person resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get person](../api/person_get.md) | [person](person.md) |Read properties and relationships of person object.|
|[Update](../api/person_update.md) | [person](person.md)	|Update person object. |
|[Delete](../api/person_delete.md) | None |Delete person object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|birthday|string||
|companyName|string||
|department|string||
|displayName|string||
|emailAddresses|[rankedEmailAddress](rankedemailaddress.md) collection||
|givenName|string||
|id|string| Read-only.|
|isFavorite|boolean||
|mailboxType|string||
|officeLocation|string||
|personNotes|string||
|personType|string||
|phones|[phone](phone.md) collection||
|postalAddresses|[location](location.md) collection||
|profession|string||
|sources|[personDataSource](persondatasource.md) collection||
|surname|string||
|title|string||
|webSites|[webSite](website.md) collection||
|yomiCompany|string||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.person"
}-->

```json
{
  "birthday": "string",
  "companyName": "string",
  "department": "string",
  "displayName": "string",
  "emailAddresses": [{"@odata.type": "microsoft.graph.rankedEmailAddress"}],
  "givenName": "string",
  "id": "string (identifier)",
  "isFavorite": true,
  "mailboxType": "string",
  "officeLocation": "string",
  "personNotes": "string",
  "personType": "string",
  "phones": [{"@odata.type": "microsoft.graph.phone"}],
  "postalAddresses": [{"@odata.type": "microsoft.graph.location"}],
  "profession": "string",
  "sources": [{"@odata.type": "microsoft.graph.personDataSource"}],
  "surname": "string",
  "title": "string",
  "webSites": [{"@odata.type": "microsoft.graph.webSite"}],
  "yomiCompany": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "person resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->