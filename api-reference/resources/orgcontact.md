# orgContact resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get orgContact](../api/orgcontact_get.md) | [orgContact](orgcontact.md) |Read properties and relationships of orgContact object.|
|[Create directReport](../api/orgcontact_post_directreports.md) |[directoryObject](directoryobject.md)| Create a new directReport by posting to the directReports collection.|
|[List directReports](../api/orgcontact_list_directreports.md) |[directoryObject](directoryobject.md) collection| Get a directReport object collection.|
|[Create memberOf](../api/orgcontact_post_memberof.md) |[directoryObject](directoryobject.md)| Create a new memberOf by posting to the memberOf collection.|
|[List memberOf](../api/orgcontact_list_memberof.md) |[directoryObject](directoryobject.md) collection| Get a memberOf object collection.|
|[Update](../api/orgcontact_update.md) | [orgContact](orgcontact.md)	|Update orgContact object. |
|[Delete](../api/orgcontact_delete.md) | None |Delete orgContact object. |
|[Checkmembergroups](../api/orgcontact_checkmembergroups.md)|string collection||
|[Getmembergroups](../api/orgcontact_getmembergroups.md)|string collection||
|[Getmemberobjects](../api/orgcontact_getmemberobjects.md)|string collection||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|businessPhones|string collection||
|city|string||
|companyName|string||
|country|string||
|department|string||
|displayName|string||
|givenName|string||
|id|string| Read-only.|
|jobTitle|string||
|mail|string||
|mailNickname|string||
|mobilePhone|string||
|officeLocation|string||
|onPremisesLastSyncDateTime|[dateTimeOffset](datetimeoffset.md)||
|onPremisesSyncEnabled|boolean||
|postalCode|string||
|proxyAddresses|string collection||
|state|string||
|streetAddress|string||
|surname|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|directReports|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|manager|[directoryObject](directoryobject.md)| Read-only. Nullable.|
|memberOf|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.orgcontact"
}-->

```json
{
  "businessPhones": ["string"],
  "city": "string",
  "companyName": "string",
  "country": "string",
  "department": "string",
  "displayName": "string",
  "givenName": "string",
  "id": "string (identifier)",
  "jobTitle": "string",
  "mail": "string",
  "mailNickname": "string",
  "mobilePhone": "string",
  "officeLocation": "string",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSyncEnabled": true,
  "postalCode": "string",
  "proxyAddresses": ["string"],
  "state": "string",
  "streetAddress": "string",
  "surname": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "orgContact resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->