---
title: "person resource type"
description: "An aggregation of information about a person from across mail, contacts and social networks. People can be local contacts, contacts from social networking, your organization's directory, and people from recent communications (such as email and Skype)."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: resourcePageType
---

# person resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An aggregation of information about a person from across mail, contacts and social networks. People can be local contacts, contacts from social networking, your organization's directory, and people from recent communications (such as email and Skype).

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List people](../api/user-list-people.md) | **person** |Get a collection of person objects ordered by their relevance to the [user](../resources/user.md).|

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|birthday|string|The person's birthday.|
|companyName|string|The name of the person's company.|
|department|string|The person's department.|
|displayName|string|The person's display name.|
|emailAddresses|[rankedEmailAddress](rankedemailaddress.md) collection|The person's email addresses.|
|givenName|string|The person's given name.|
|id|string|The person's unique identifier. Read-only.|
|isFavorite|boolean|`true` if the user has flagged this person as a favorite.|
|mailboxType|string|The type of mailbox that is represented by the person's email address.|
|officeLocation|string|The location of the person's office.|
|personNotes|string|Free-form notes that the user has taken about this person.|
|personType|string|The type of person, for example distribution list.|
|phones|[phone](phone.md) collection|The person's phone numbers.|
|postalAddresses|[location](location.md) collection|The person's addresses.|
|profession|string|The person's profession.|
|sources|[personDataSource](persondatasource.md) collection|The sources the user data comes from, for example Directory or Outlook Contacts.|
|surname|string|The person's surname.|
|title|string|The person's title.|
|userPrincipalName|string|The user principal name (UPN) of the person. The UPN is an Internet-style login name for the person based on the Internet standard [RFC 822](https://www.ietf.org/rfc/rfc0822.txt). By convention, this should map to the person's email name. The general format is alias@domain.|
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
  "userPrincipalName": "string",
  "websites": [{"@odata.type": "microsoft.graph.website"}],
  "yomiCompany": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "person resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


