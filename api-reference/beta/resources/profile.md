---
title: "profile resource type"
description: "Represents properties that are descriptive of a user and that are surfaced in shared, people experiences across Microsoft 365 and third-party services and experiences via Microsoft Graph."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---
 
# profile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents properties that are descriptive of a user in a tenant, for example, anniversaries and education activities. These properties are surfaced in shared, people experiences across Microsoft 365 and third-party services and experiences via Microsoft Graph. 

Programmatically, these properties are expressed as [relationships](#relationships) of the **profile** resource. To get one of these navigation properties or create an instance of these properties for the user, use the corresponding GET or POST method on that property, where applicable. See the [methods](#methods) listed below.

## Methods

| Method                                                                     | Return Type                                                    | Description                                                                                  |
|:---------------------------------------------------------------------------|:---------------------------------------------------------------|:---------------------------------------------------------------------------------------------|
| [Get profile](../api/profile-get.md)                                       | [profile](profile.md)                                          | Read properties and relationships of the profile object.                                     |
| [Delete profile](../api/profile-delete.md)                                 | None                                                           | Delete a **profile** object.                                                                 |
| [Create userAccountInformation](../api/profile-post-accounts.md)           | [userAccountInformation](useraccountinformation.md)            | Create a new **userAccountInformation** object by posting to the accounts collection.        |
| [List accounts](../api/profile-list-accounts.md)                           | [userAccountInformation](useraccountinformation.md) collection | Get a **userAccountInformation** object collection.                                          |
| [Create itemAddress](../api/profile-post-addresses.md)                     | [itemAddress](itemaddress.md)                                  | Create a new **itemAddress** by posting to the addresses collection.                         |
| [List addresses](../api/profile-list-addresses.md)                         | [itemAddress](itemaddress.md) collection                       | Get an **itemAddress** object collection.                                                    |
| [Create personAnniversary](../api/profile-post-anniversaries.md)           | [personAnniversary](personanniversary.md)                      | Create a new **personAnniversary** by posting to the anniversaries collection.               |
| [List anniversaries](../api/profile-list-anniversaries.md)                 | [personAnniversary](personanniversary.md) collection           | Get a **personAnniversary** object collection.                                               |
| [Create personAward](../api/profile-post-awards.md)                        | [personAward](personaward.md)                                  | Create a new **personAward** object by posting to the awards collection.                     |
| [List awards](../api/profile-list-awards.md)                               | [personAward](personaward.md) collection                       | Get a **personAward** object collection.                                                     |
| [Create personCertification](../api/profile-post-certifications.md)        | [personCertification](personcertification.md)                  | Create a new **personCertification** object by posting to the certifications collection.     |
| [List certifications](../api/profile-list-certifications.md)               | [personCertification](personcertification.md) collection       | Get a **personCertification** object collection.                                             |
| [Create educationalActivity](../api/profile-post-educationalactivities.md) | [educationalActivity](educationalactivity.md)                  | Create a new **educationalActivity** by posting to the **educationalActivities** collection. |
| [List educationalActivities](../api/profile-list-educationalactivities.md) | [educationalActivity](educationalactivity.md) collection       | Get an **educationalActivity** object collection.                                            |
| [Create itemEmail](../api/profile-post-emails.md)                          | [itemEmail](itememail.md)                                      | Create a new **itemEmail** by posting to the emails collection.                              |
| [List emails](../api/profile-list-emails.md)                               | [itemEmail](itememail.md) collection                           | Get an **itemEmail** object collection.                                                      |
| [Create personInterest](../api/profile-post-interests.md)                  | [personInterest](personinterest.md)                            | Create a new **personInterest** by posting to the interests collection.                      |
| [List interests](../api/profile-list-interests.md)                         | [personInterest](personinterest.md) collection                 | Get a **personInterest** object collection.                                                  |
| [Create languageProficiency](../api/profile-post-languages.md)             | [languageProficiency](languageproficiency.md)                  | Create a new **languageProficiency** by posting to the languages collection.                 |
| [List languages](../api/profile-list-languages.md)                         | [languageProficiency](languageproficiency.md) collection       | Get a **languageProficiency** object collection.                                             |
| [Create personName](../api/profile-post-names.md)                          | [personName](personname.md)                                    | Create a new **personName** object by posting to the names collection.                       |
| [List names](../api/profile-list-names.md)                                 | [personName](personname.md) collection                         | Get a **personName** object collection.                                                      |
| [Create personAnnotation](../api/profile-post-notes.md)                    | [personAnnotation](personannotation.md)                        | Create a new **personAnnotation** object by posting to the notes collection.                 |
| [List notes](../api/profile-list-notes.md)                                 | [personAnnotation](personannotation.md) collection             | Get a **personAnnotation** object collection.                                                |
| [Create itemPatent](../api/profile-post-patents.md)                        | [itemPatent](itempatent.md)                                    | Create a new **itemPatent** object by posting to the patents collection.                     |
| [List patents](../api/profile-list-patents.md)                             | [itemPatent](itempatent.md) collection                         | Get a **itemPatent** object collection.                                                      |
| [Create itemPhone](../api/profile-post-phones.md)                          | [itemPhone](itemphone.md)                                      | Create a new itemPhone by posting to the phones collection.                                  |
| [List phones](../api/profile-list-phones.md)                               | [itemPhone](itemphone.md) collection                           | Get a **itemPhone** object collection.                                                       |
| [Create workPosition](../api/profile-post-positions.md)                    | [workPosition](workposition.md)                                | Create a new workPosition by posting to the positions collection.                            |
| [List positions](../api/profile-list-positions.md)                         | [workPosition](workposition.md) collection                     | Get a **workPosition** object collection.                                                    |
| [Create projectParticipation](../api/profile-post-projects.md)             | [projectParticipation](projectparticipation.md)                | Create a new **projectParticipation** by posting to the projects collection.                 |
| [List projects](../api/profile-list-projects.md)                           | [projectParticipation](projectparticipation.md) collection     | Get a **projectParticipation** object collection.                                            |
| [Create itemPublication](../api/profile-post-publications.md)              | [itemPublication](itempublication.md)                          | Create a new **itemPublication** object by posting to the publications collection.           |
| [List publications](../api/profile-list-publications.md)                   | [itemPublication](itempublication.md) collection               | Get a **itemPublication** object collection.                                                 |
| [Create personResponsibility](../api/profile-post-responsibilities.md)     | [personResponsibility](personresponsibility.md)                | Create a new **personResponsibility** object by posting to the responsibilities collection.  |
| [List responsibilities](../api/profile-list-responsibilities.md)           | [personResponsibility](personresponsibility.md) collection     | Get a **personResponsibility** object collection.                                            |
| [Create skillProficiency](../api/profile-post-skills.md)                   | [skillProficiency](skillproficiency.md)                        | Create a new **skillProficiency** by posting to the skills collection.                       |
| [List skills](../api/profile-list-skills.md)                               | [skillProficiency](skillproficiency.md) collection             | Get a **skillProficiency** object collection.                                                |
| [Create webAccount](../api/profile-post-webaccounts.md)                    | [webAccount](webaccount.md)                                    | Create a new **webAccount** by posting to the webAccounts collection.                        |
| [List webAccounts](../api/profile-list-webaccounts.md)                     | [webAccount](webaccount.md) collection                         | Get a **webAccount** object collection.                                                      |
| [Create personWebsite](../api/profile-post-websites.md)                    | [personWebsite](personwebsite.md)                              | Create a new **personWebsite** by posting to the websites collection.                        |
| [List websites](../api/profile-list-websites.md)                           | [personWebsite](personwebsite.md) collection                   | Get a **personWebsite** object collection.                                                   |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id            |String       | Read-only.  |

## Relationships

| Relationship          | Type                                                         | Description                                                                                                                                    |
|:----------------------|:-------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------|
|accounts               |[userAccountInformation](useraccountinformation.md) collection| Represents information specifically tied to a user's account.                                                             |
|addresses              |[itemAddress](itemaddress.md) collection                      | Represents details of addresses associated with the user.                                                             |
|anniversaries          |[personAnniversary](personanniversary.md) collection          | Represents the details of meaningful dates associated with a person.                                                                  |
|awards                 |[personAward](personaward.md) collection                      | Represents the details of awards or honors associated with a person.                                                                  |
|certifications         |[personCertification](personcertification.md) collection      | Represents the details of certifications associated with a person.                                                                  |
|educationalActivities  |[educationalActivity](educationalactivity.md) collection      | Represents data that a user has supplied related to undergraduate, graduate, postgraduate or other educational activities. |
|emails                 |[itemEmail](itememail.md) collection                          | Represents detailed information about email addresses associated with the user.                       |
|interests              |[personInterest](personinterest.md) collection                | Provides detailed information about interests the user has associated with themselves in various services.             |
|languages              |[languageProficiency](languageproficiency.md) collection      | Represents detailed information about languages that a user has added to their profile.                                    |
|names                  |[personName](personname.md) collection                        | Represents the names a user has added to their profile.                                    |
|notes                  |[personAnnotation](personannotation.md) collection            | Represents notes that a user has added to their profile.                                    |
|patents                |[itemPatent](itempatent.md) collection                        | Represents patents that a user has added to their profile.                                    |
|phones                 |[itemPhone](itemphone.md) collection                          | Represents detailed information about phone numbers associated with a user in various services.                            |
|positions              |[workPosition](workposition.md) collection                    | Represents detailed information about work positions associated with a user's profile.                                    |
|projects               |[projectParticipation](projectparticipation.md) collection    | Represents detailed information about projects associated with a user.                                                     |
|publications           |[itemPublication](itempublication.md) collection              | Represents details of any publications a user has added to their profile.                                                     |
|responsibilities       |[personResponsibility](personResponsibility.md) collection    | Represents details of responsibilities a user has added to their profile.                                                     |
|skills                 |[skillProficiency](skillproficiency.md) collection            | Represents detailed information about skills associated with a user in various services.                                   |
|webAccounts            |[webAccount](webaccount.md) collection                        | Represents web accounts the user has indicated they use or has added to their user profile.                               |
|websites               |[personWebsite](personwebsite.md) collection                  | Represents detailed information about websites associated with a user in various services.                                 |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.profile",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
    "id": "String (identifier)"
}
```


