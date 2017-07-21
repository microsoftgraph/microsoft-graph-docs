# person resource type

An aggregation of information about a person from across mail, contacts and social networks. People can be local contacts, contacts from social networking, your organization's directory, and people from recent communications (such as email and Skype).

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get person](../api/person_get.md) | [person](person.md) |Read properties and relationships of a person object.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|birthday|string|The person's birthday.|
|companyName|string|The name of the person's company.|
|department|string|The person's department.|
|displayName|string|The person's display name.|
|scoredEmailAddresses|[scoredEmailAddress](scoredemailaddress.md) collection|The person's email addresses.|
|givenName|string|The person's given name.|
|id|string|The person's unique identifier. Read-only.|
|imAddress|String collection|The instant message voice over IP (VOIP) session initiation protocol (SIP) address for the user. Read-only.|
|isFavorite|boolean|`true` if the user has flagged this person as a favorite.|
|jobTitle|string|The person's job title.|
|officeLocation|string|The location of the person's office.|
|personNotes|string|Free-form notes that the the user has taken about this person.|
|personType|[personType](persontype.md) collection|The type of person.|
|phones|[phone](phone.md) collection|The person's phone numbers.|
|postalAddresses|[location](location.md) collection|The person's addresses.|
|profession|string|The person's profession.|
|surname|string|The person's surname.|
|userPrincipalName|string|The user principal name (UPN) of the person. The UPN is an Internet-style login name for the person based on the Internet standard [RFC 822](http://www.ietf.org/rfc/rfc0822.txt). By convention, this should map to the person's email name. The general format is alias@domain.|
|websites|[website](website.md) collection|The person's websites.|
|yomiCompany|string|The phonetic Japanese name of the person's company.|

## Relationships
None


## JSON representation

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
  "scoredEmailAddresses": [{"@odata.type": "microsoft.graph.scoredemailaddress"}],
  "givenName": "string",
  "id": "string (identifier)",
  "isFavorite": true,
  "jobTitle": "string",
  "officeLocation": "string",
  "personNotes": "string",
  "personType": [{"@odata.type": "microsoft.graph.persontype"}],
  "phones": [{"@odata.type": "microsoft.graph.phone"}],
  "postalAddresses": [{"@odata.type": "microsoft.graph.location"}],
  "profession": "string",
  "surname": "string",
  "userPrincipalName": "string",
  "websites": [{"@odata.type": "microsoft.graph.website"}],
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
