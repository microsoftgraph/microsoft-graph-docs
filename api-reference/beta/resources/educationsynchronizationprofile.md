---
title: "educationSynchronizationProfile resource type"
description: "Represents a set of configurations used to synchronize education entities and roster information from a source directory to Azure Active Directory (Azure AD). This resource provides a programmatic representation used in School Data Sync."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationSynchronizationProfile resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a set of configurations used to synchronize education entities and roster information from a source directory to Azure Active Directory (Azure AD). This resource provides a programmatic representation used in [School Data Sync](https://sds.microsoft.com).

## Methods

| Method | Return Type | Description |
|:-|:-|:-|
| [List synchronization profiles](../api/educationsynchronizationprofile-list.md) | **educationSynchronizationProfile** collection | Get a list of all the synchronization profiles in the tenant. |
| [Get synchronization profile](../api/educationsynchronizationprofile-get.md) | **educationSynchronizationProfile** | Retrieve a specific profile given the profile identifier. |
| [Create synchronization profile](../api/educationsynchronizationprofile-post.md) | None | Create a new synchronization profile. |
| [Delete synchronization profile](../api/educationsynchronizationprofile-delete.md) | **educationSynchronizationProfile** | Delete a specific profile given the profile identifier. |
| [Pause an ongoing sync](../api/educationsynchronizationprofile-pause.md) | None | Pause an ongoing synchronization. |
| [Resume a paused sync](../api/educationsynchronizationprofile-resume.md) | None | Resume a paused synchronization. |
| [Reset a sync](../api/educationsynchronizationprofile-reset.md) | None | Reset the state of the profile and restart synchronization. |
| [Start sync for uploaded files](../api/educationsynchronizationprofile-start.md) | [educationFileSynchronizationVerificationMessage](educationfilesynchronizationverificationmessage.md) collection| Verify the uploaded source files and start synchronization. Applies only when the data provider is [educationCsvDataProvider](educationcsvdataprovider.md). |
| [Get an upload URL](../api/educationsynchronizationprofile-uploadurl.md) | string | Return the short-lived URL to upload CSV data files. Applies only when the data provider is [educationCsvDataProvider](educationcsvdataprovider.md). |
| [Get status of a sync](../api/educationsynchronizationprofilestatus-get.md) | [status](educationsynchronizationprofilestatus.md) | Return the status of a specific synchronization profile. |
| [Get synchronization errors](../api/educationsynchronizationerrors-get.md) | [educationSynchronizationError](educationsynchronizationerror.md) collection| Get all the errors generated during synchronization. |

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **displayName** | string |  Name of the configuration profile for syncing identities.         |
| **dataProvider** | [educationSynchronizationDataProvider](educationsynchronizationdataprovider.md) |  The data provider used for the profile.         |
| **identitySynchronizationConfiguration** | [educationIdentitySynchronizationConfiguration](educationidentitysynchronizationconfiguration.md) | Identity [creation](educationidentitycreationconfiguration.md) or [matching](educationidentitymatchingconfiguration.md) configuration .        |
| **licensesToAssign** | [educationSynchronizationLicenseAssignment](educationsynchronizationlicenseassignment.md) collection|  License setup configuration.        |
| **state** | educationSynchronizationProfileState |  The state of the profile. Possible values are: `provisioning`, `provisioned`, `provisioningFailed`, `deleting`, `deletionFailed`.          |

## Relationships

| Property | Type | Description |
|:-|:-|:-|
| **errors** | [educationSynchronizationError](educationsynchronizationerror.md) collection| All errors associated with this synchronization profile. |
| **profileStatus** | [educationSynchronizationProfileStatus](educationsynchronizationprofilestatus.md) | The synchronization status. |

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
    "state": { "@odata.type": "microsoft.graph.educationSynchronizationProfileState" },
    "profileStatus": {"@odata.type": "microsoft.graph.educationSynchronizationProfileStatus"},
    "errors": [{"@odata.type": "microsoft.graph.educationSynchronizationProfileStatus" }],
    "dataProvider": { "@odata.type": "microsoft.graph.educationCsvDataProvider" },
    "identitySynchronizationConfiguration": { "@odata.type": "microsoft.graph.educationIdentitySynchronizationConfiguration" },
    "licensesToAssign": [{"@odata.type":"microsoft.graph.educationSynchronizationLicenseAssignment"}],
    "handleSpecialCharacterConstraint": "Boolean"
}
```
