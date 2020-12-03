---
title: "educationSynchronizationProfile resource type"
description: "Represents a set of configurations used to synchronize education entities and roster information from a source directory to Azure Active Directory (Azure AD). This resource provides a programmatic representation used in School Data Sync."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationSynchronizationProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a set of configurations used to synchronize education entities and roster information from a source directory to Azure Active Directory (Azure AD). This resource provides a programmatic representation used in [School Data Sync](https://sds.microsoft.com).

## Methods

| Method                                                                    | Return Type                                                 | Description                                                                                                                    |
| :------------------------------------------------------------------------ | :---------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------- |
| [List profiles](../api/educationsynchronizationprofile-list.md)           | [educationSynchronizationProfile] collection                | Get a list of all the synchronization profiles in the tenant.                                                                  |
| [Get profile](../api/educationsynchronizationprofile-get.md)              | [educationSynchronizationProfile]                           | Retrieve a specific profile given the profile identifier.                                                                      |
| [Create profile](../api/educationsynchronizationprofile-post.md)          | None                                                        | Create a new synchronization profile.                                                                                          |
| [Delete profile](../api/educationsynchronizationprofile-delete.md)        | [educationSynchronizationProfile]                           | Delete a specific profile given the profile identifier.                                                                        |
| [Pause profile](../api/educationsynchronizationprofile-pause.md)          | None                                                        | Pause an ongoing synchronization.                                                                                              |
| [Resume profile](../api/educationsynchronizationprofile-resume.md)        | None                                                        | Resume a paused synchronization.                                                                                               |
| [Reset profile](../api/educationsynchronizationprofile-reset.md)          | None                                                        | Reset the state of the profile and restart synchronization.                                                                    |
| [Start CSV profile](../api/educationsynchronizationprofile-start.md)      | [educationFileSynchronizationVerificationMessage]collection | Verify the uploaded source files and start synchronization. Applies only when the data provider is [educationCsvDataProvider]. |
| [Get CSV upload URL](../api/educationsynchronizationprofile-uploadurl.md) | string                                                      | Return the short-lived URL to upload CSV data files. Applies only when the data provider is [educationCsvDataProvider].        |
| [Get status](../api/educationsynchronizationprofilestatus-get.md)         | [educationsynchronizationProfileStatus]                     | Return the status of a specific synchronization profile.                                                                       |
| [Get errors](../api/educationsynchronizationerrors-get.md)                | [educationSynchronizationError] collection                  | Get all the errors generated during synchronization.                                                                           |

## Properties

| Property                             | Type                                                   | Description                                                                                                                       |
| :----------------------------------- | :----------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------- |
| id                                   | String                                                 | The unique identifier for the resource. (read-only)                                                                               |
| displayName                          | String                                                 | Name of the configuration profile for syncing identities.                                                                         |
| dataProvider                         | [educationSynchronizationDataProvider]                 | The data provider used for the profile.                                                                                           |
| expirationDate                       | Date                                                   | The date the profile should be considered expired and cease syncing. When `null`. the profile will never expire. (optional)       |
| handleSpecialCharacterConstraint     | Bool                                                   | Determines if School Data Sync should automatically replace unsupported special characters while syncing from source.             |
| identitySynchronizationConfiguration | [educationIdentitySynchronizationConfiguration]        | Determines how the Profile should [create new][fullsync] or [match existing][dirsync] AAD Users.                                  |
| licensesToAssign                     | [educationSynchronizationLicenseAssignment] collection | License setup configuration.                                                                                                      |
| state                                | educationSynchronizationProfileState                   | The state of the profile. Possible values are: `provisioning`, `provisioned`, `provisioningFailed`, `deleting`, `deletionFailed`. |

## Relationships

| Relationship  | Type                                       | Description                                              |
| :------------ | :----------------------------------------- | :------------------------------------------------------- |
| errors        | [educationSynchronizationError] collection | All errors associated with this synchronization profile. |
| profileStatus | [educationSynchronizationProfileStatus]    | The synchronization status.                              |

## Data Providers

Each [educationSynchronizationProfile] must specify one of the follow data providers to use as the synchronization source.

| Data Provider                                                             | Description                                                                                        |
| :------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------- |
| [educationCsvDataProvider]                                                | CSV files uploaded to the Profile's [SAS URL](../api/educationsynchronizationprofile-uploadurl.md) |
| [educationOneRosterApiDataProvider](educationonerosterapidataprovider.md) | OneRoster v1.1 API                                                                                 |
| [educationPowerSchoolDataProvider]                                        | PowerSchool API                                                                                    |

## JSON representation

The following is a JSON representation of the **educationSynchronizationProfile** resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.educationSynchronizationProfile"
}-->

```json
{
  "id": "String",
  "displayName": "String",
  "state": {
    "@odata.type": "microsoft.graph.educationSynchronizationProfileState"
  },
  "profileStatus": {
    "@odata.type": "microsoft.graph.educationSynchronizationProfileStatus"
  },
  "errors": [
    {
      "@odata.type": "microsoft.graph.educationSynchronizationProfileStatus"
    }
  ],
  "dataProvider": {
    "@odata.type": "microsoft.graph.educationCsvDataProvider"
  },
  "identitySynchronizationConfiguration": {
    "@odata.type": "microsoft.graph.educationIdentitySynchronizationConfiguration"
  },
  "licensesToAssign": [
    {
      "@odata.type": "microsoft.graph.educationSynchronizationLicenseAssignment"
    }
  ],
  "handleSpecialCharacterConstraint": "Boolean",
  "expirationDate": "Date"
}
```

[educationsynchronizationprofile]: educationsynchronizationprofile.md
[educationsynchronizationprofilestatus]: educationsynchronizationProfileStatus.md
[educationsynchronizationerror]: educationSynchronizationError.md
[educationfilesynchronizationverificationmessage]: educationFileSynchronizationVerificationMessage.md
[educationcsvdataprovider]: educationCsvDataProvider.md
[educationsynchronizationdataprovider]: educationSynchronizationDataProvider.md
[educationidentitysynchronizationconfiguration]: educationIdentitySynchronizationConfiguration.md
[educationsynchronizationlicenseassignment]: educationSynchronizationLicenseAssignment.md
[fullsync]: educationidentitycreationconfiguration.md
[dirsync]: educationidentitycreationconfiguration.md
[educationpowerschooldataprovider]: educationPowerSchoolDataProvider.md
[educationcsvdataprovider]: educationCsvDataProvider.md

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2020-05-06 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationSynchronizationProfile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
      "Error: microsoft.graph.educationSynchronizationProfile/dataProvider:\r\n      Referenced type microsoft.graph.educationSynchronizationDataProvider is not defined in the doc set! Potential suggestion: UNKNOWN"
  ]
}-->


