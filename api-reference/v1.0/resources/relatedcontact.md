---
title: "relatedContact resource type"
description: "Contact record related to an educationUser that provides information for guardians, aides, doctors, and so on."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# realtedContact resource type

Namespace: microsoft.graph

Contact record related to an [educationUser](../resources/educationuser.md) that provides information for guardians, aides, doctors, and so on.

## Properties

| Property      | Type                  | Description                                                                                                                               |
| :------------ | :-------------------- | :---------------------------------------------------------------------------------------------------------------------------------------- |
| id            | String                | Identity of the contact within Azure Active Directory.                                                                                    |
| displayName   | String                | Name of the contact. Required.                                                                                                            |
| emailAddress  | String                | Primary email address of the contact.                                                                                                     |
| mobilePhone   | String                | Mobile phone number of the contact.                                                                                                       |
| relationship  | `contactRelationship` | Relationship to the user. Possible values are `parent`, `relative`, `aide`, `doctor`, `guardian`, `child`, `other`, `unknownFutureValue`. |
| accessConsent | Boolean               | Indicates whether the user has been consented to access student data.                                                                     |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.relatedContact"
}-->

```json
{
  "id": "String",
  "displayName": "String",
  "emailAddress": "String",
  "mobilePhone": "String",
  "relationship": "contactRelationship",
  "accessConsent": true
}
```

<!-- uuid: 720F9AB6-6E7A-4A66-8B0A-37A556FF99C5
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "relatedContact resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

