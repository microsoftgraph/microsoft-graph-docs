---
title: "profile resource type"
description: "Represents properties that are descriptive of a user and that are surfaced in shared people experiences across Microsoft 365 and third-party services and experiences via Microsoft Graph."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---
 
# profile resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents descriptive properties of a person in a tenant. These properties are surfaced in shared people experiences across Microsoft 365 and third-party services and experiences via Microsoft Graph. 

## Methods

| Method                                                                     | Return Type                                                    | Description                                                                          |
|:---------------------------------------------------------------------------|:---------------------------------------------------------------|:-------------------------------------------------------------------------------------|
| [Get profile](../api/profile-get.md)                                       | [profile](profile.md)                                          | Read properties and relationships of profile object.                                 |
| [Delete profile](../api/profile-delete.md)                                         | None                                                           | Delete a **profile** object.                                                               |
| [List account](../api/profile-list-account.md)                             | [userAccountInformation](useraccountinformation.md) collection | Get a **userAccountInformation** object collection.                                      |
| [Create personAnniversary](../api/profile-post-anniversaries.md)           | [personAnniversary](personanniversary.md)                      | Create a new **personAnniversary** by posting to the anniversaries collection.           |
| [List anniversaries](../api/profile-list-anniversaries.md)                 | [personAnniversary](personanniversary.md) collection           | Get a **personAnniversary** object collection.                                           |
| [Create educationalActivity](../api/profile-post-educationalactivities.md) | [educationalActivity](educationalactivity.md)                  | Create a new **educationalActivity** by posting to the **educationalActivities** collection. |
| [List educationalActivities](../api/profile-list-educationalactivities.md) | [educationalActivity](educationalactivity.md) collection       | Get an **educationalActivity** object collection.                                         |
| [Create itemEmail](../api/profile-post-emails.md)                          | [itemEmail](itememail.md)                                      | Create a new **itemEmail** by posting to the emails collection.                          |
| [List emails](../api/profile-list-emails.md)                               | [itemEmail](itememail.md) collection                           | Get an **itemEmail** object collection.                                                   |
| [Create personInterest](../api/profile-post-interests.md)                  | [personInterest](personinterest.md)                            | Create a new **personInterest** by posting to the interests collection.                  |
| [List interests](../api/profile-list-interests.md)                         | [personInterest](personinterest.md) collection                 | Get a **personInterest** object collection.                                              |
| [Create languageProficiency](../api/profile-post-languages.md)             | [languageProficiency](languageproficiency.md)                  | Create a new **languageProficiency** by posting to the languages collection.             |
| [List languages](../api/profile-list-languages.md)                         | [languageProficiency](languageproficiency.md) collection       | Get a **languageProficiency** object collection.                                         |
| [List names](../api/profile-list-names.md)                                 | [personName](personname.md) collection                         | Get a **personName** object collection.                                                  |
| [Create personName](../api/profile-post-names.md)                          | [personName](personName.md)                                    | Create a new **personName** object by posting to the names collection.                   |
| [List websites](../api/profile-list-websites.md)                           | [personWebsite](personwebsite.md) collection                   | Get a **personWebsite** object collection.                                               |
| [Create itemPhone](../api/profile-post-phones.md)                          | [itemPhone](itemphone.md)                                      | Create a new itemPhone by posting to the phones collection.                          |
| [List phones](../api/profile-list-phones.md)                               | [itemPhone](itemphone.md) collection                           | Get a **itemPhone** object collection.                                                   |
| [Create workPosition](../api/profile-post-positions.md)                    | [workPosition](workposition.md)                                | Create a new workPosition by posting to the positions collection.                    |
| [List positions](../api/profile-list-positions.md)                         | [workPosition](workposition.md) collection                     | Get a **workPosition** object collection.                                                |
| [Create projectParticipation](../api/profile-post-projects.md)             | [projectParticipation](projectparticipation.md)                | Create a new **projectParticipation** by posting to the projects collection.             |
| [List projects](../api/profile-list-projects.md)                           | [projectParticipation](projectparticipation.md) collection     | Get a **projectParticipation** object collection.                                        |
| [Create skillProficiency](../api/profile-post-skills.md)                   | [skillProficiency](skillproficiency.md)                        | Create a new **skillProficiency** by posting to the skills collection.                   |
| [List skills](../api/profile-list-skills.md)                               | [skillProficiency](skillproficiency.md) collection             | Get a **skillProficiency** object collection.                                            |
| [Create webAccount](../api/profile-post-webaccounts.md)                    | [webAccount](webaccount.md)                                    | Create a new **webAccount** by posting to the webAccounts collection.                    |
| [List webAccounts](../api/profile-list-webaccounts.md)                     | [webAccount](webaccount.md) collection                         | Get a **webAccount** object collection.                                                  |
| [Create personWebsite](../api/profile-post-websites.md)                    | [personWebsite](personwebsite.md)                              | Create a new **personWebsite** by posting to the websites collection.                    |
| [List websites](../api/profile-list-websites.md)                           | [personWebsite](personwebsite.md) collection                   | Get a **personWebsite** object collection.                                               |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id            |String       | Read-only.  |

## Relationships

| Relationship          | Type                                                         | Description         |
|:----------------------|:-------------------------------------------------------------|:--------------------|
|account                |[userAccountInformation](useraccountinformation.md) collection| Represents information specifically tied to a user's account. Read-only. Nullable.|
|anniversaries          |[personAnniversary](personanniversary.md) collection          | Represents the details of meaningful dates associated with a person. Read-only. Nullable.|
|educationalActivities  |[educationalActivity](educationalactivity.md) collection      | Represents data that a user has supplied related to undergraduate, graduate, postgraduate or other educational activities. Read-only. Nullable.|
|emails                 |[itemEmail](itememail.md) collection                          | Represents detailed information about email addresses associated with the user. Read-only. Nullable.|
|interests              |[personInterest](personinterest.md) collection                | Provides detailed information about interests the user has associated with themselves in various services. Read-only. Nullable.|
|languages              |[languageProficiency](languageproficiency.md) collection      | Represents detailed information about languages that a user has added to their profile. Read-only. Nullable.|
|phones                 |[itemPhone](itemphone.md) collection                          | Represents detailed information about phone numbers associated with a user in various services. Read-only. Nullable.|
|positions              |[workPosition](workposition.md) collection                    | Represents detailed information about work positions associated with a user's profile. Read-only. Nullable.|
|projects               |[projectParticipation](projectparticipation.md) collection    | Represents detailed information about projects associated with a user. Read-only. Nullable.|
|skills                 |[skillProficiency](skillproficiency.md) collection            | Represents detailed information about skills associated with a user in various services. Read-only. Nullable.|
|webAccounts            |[webAccount](webaccount.md) collection                        | Represents web accounts the user has indicated they use or has added to their user profile. Read-only. Nullable.|
|websites               |[personWebsite](personwebsite.md) collection                  | Represents detailed information about websites associated with a user in various services. Read-only. Nullable.|

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
    "id": "profileId",
    "anniversaries": [],
    "websites": [],
    "educationalActivities": [
        {
            "endMonthYear": null,
            "startMonthYear": null,
            "completionMonthYear": null,
            "allowedAudiences": "everyone",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "inference": null,
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "id": "c3a9f515-4a15-456b-9bf7-690dcd7f05d7",
            "program": {
                "abbreviation": null,
                "description": null,
                "displayName": "",
                "grade": null,
                "notes": null,
                "webUrl": null
            },
            "institution": {
                "description": null,
                "displayName": "Colorado State University",
                "location": null,
                "webUrl": null
            },
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "UPA",
                    "id": null
                }
            }
        }
    ],
    "emails": [
        {
            "address": "john.doe@contoso.com",
            "displayName": null,
            "type": "main",
            "allowedAudiences": "everyone",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "inference": null,
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "id": "046452c0-c893-4fd1-a7ca-57e2ccf13861",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "AAD",
                    "id": null
                }
            }
        }
    ],
    "interests": [
        {
            "categories": [],
            "description": null,
            "displayName": "Microsoft Graph",
            "webUrl": null,
            "allowedAudiences": "everyone",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "inference": null,
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "id": "0c568cf5-5e44-4b3e-aefd-6b46ca00a880",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "UPA",
                    "id": null
                }
            }
        }
    ],
    "languages": [
        {
            "displayName": "English (United States)",
            "tag": "en-US",
            "proficiency": null,
            "allowedAudiences": "everyone",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "inference": null,
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "id": "3d34dc2e-fc84-43ff-98f6-884467caba72",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "AAD",
                    "id": null
                }
            }
        }
    ],

    "names": [
        {
            "displayName": "John Doe",
            "first": "John",
            "initials": "JD",
            "last": "Doe",
            "languageTag": null,
            "maiden": null,
            "middle": null,
            "nickname": null,
            "suffix": null,
            "title": null,
            "pronunciation": null,
            "allowedAudiences": "everyone",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "inference": null,
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "id": "b79302ca-7f05-4c89-96ce-b89d5855eb0e",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "AAD",
                    "id": null
                }
            }
        }
    ],
    "phones": [
        {
            "displayName": null,
            "type": "business",
            "number": "+47 (9) 387654321",
            "allowedAudiences": "everyone",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "inference": null,
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "id": "d22aef2c-f332-4958-aac3-8d1d710a9e32",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "AAD",
                    "id": null
                }
            }
        }
    ],
    "positions": [
        {
            "categories": [],
            "allowedAudiences": "everyone",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "inference": null,
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "id": "0f4d49c8-76cb-4d56-9f92-a10e182ba0e1",
            "detail": {
                "description": null,
                "endMonthYear": "0001-01-01",
                "jobTitle": "Associate Architect",
                "startMonthYear": "0001-01-01",
                "summary": null,
                "company": {
                    "displayName": "Contoso Corporation",
                    "pronunciation": null,
                    "department": "Architecture",
                    "officeLocation": "",
                    "webUrl": null,
                    "address": {
                        "type": "business",
                        "postOfficeBox": null,
                        "street": "",
                        "city": "Oslo",
                        "state": "",
                        "countryOrRegion": "",
                        "postalCode": ""
                    }
                }
            },
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "AAD",
                    "id": null
                }
            }
        }
    ],
    "projects": [
        {
            "categories": [],
            "client": null,
            "displayName": "Profile on Graph",
            "detail": null,
            "allowedAudiences": "everyone",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "inference": null,
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "id": "d6d84567-513a-47be-9be2-99fee6a12777",
            "colleagues": [],
            "sponsors": [],
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "UPA",
                    "id": null
                }
            }
        }
    ],
    "skills": [
        {
            "categories": [],
            "displayName": "REST API Design",
            "proficiency": null,
            "webUrl": null,
            "allowedAudiences": "everyone",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "inference": null,
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "id": "9cd979f9-7a43-4dd1-a628-42bb07bd0974",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "UPA",
                    "id": null
                }
            }
        }
    ],
    "webAccounts": []
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "profile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
