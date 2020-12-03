---
title: "person resource type"
description: "An aggregation of information about a person from across mail, contacts, and social networks. People can be local contacts, contacts from social networking or your organization's directory, and people from recent communications (such as email and Skype)."
author: "simonhult"
localization_priority: Priority
ms.prod: "insights"
doc_type: resourcePageType
---

# person resource type

Namespace: microsoft.graph

An aggregation of information about a person from across mail, contacts, and social networks. People can be local contacts, contacts from social networking or your organization's directory, and people from recent communications (such as email and Skype).

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List people](../api/user-list-people.md) | **person** |Get a collection of person objects ordered by their relevance to the [user](../resources/user.md).|

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|birthday|String|The person's birthday.|
|companyName|String|The name of the person's company.|
|department|String|The person's department.|
|displayName|String|The person's display name.|
|scoredEmailAddresses|[scoredEmailAddress](scoredemailaddress.md) collection|The person's email addresses.|
|givenName|String|The person's given name.|
|id|String|The person's unique identifier. Read-only.|
|imAddress|String|The instant message voice over IP (VOIP) session initiation protocol (SIP) address for the user. Read-only.|
|isFavorite|Boolean|`true` if the user has flagged this person as a favorite.|
|jobTitle|String|The person's job title.|
|officeLocation|String|The location of the person's office.|
|personNotes|String|Free-form notes that the user has taken about this person.|
|personType|[personType](persontype.md) |The type of person.|
|phones|[phone](phone.md) collection|The person's phone numbers.|
|postalAddresses|[location](location.md) collection|The person's addresses.|
|profession|String|The person's profession.|
|surname|String|The person's surname.|
|userPrincipalName|String|The user principal name (UPN) of the person. The UPN is an Internet-style login name for the person based on the Internet standard [RFC 822](https://www.ietf.org/rfc/rfc0822.txt). By convention, this should map to the person's email name. The general format is alias@domain.|
|websites|[website](website.md) collection|The person's websites.|
|yomiCompany|String|The phonetic Japanese name of the person's company.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.person"
}-->

```json
{
  "birthday": "string",
  "companyName": "string",
  "department": "string",
  "displayName": "string",
  "scoredEmailAddresses": [{"@odata.type": "microsoft.graph.scoredEmailAddress"}],
  "givenName": "string",
  "id": "string (identifier)",
  "imAddress": "string",
  "isFavorite": true,
  "jobTitle": "string",
  "officeLocation": "string",
  "personNotes": "string",
  "personType": {"@odata.type": "microsoft.graph.personType"},
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

