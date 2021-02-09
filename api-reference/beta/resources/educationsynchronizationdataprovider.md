---
title: "educationSynchronizationDataProvider resource type"
description: "Represents the source SIS schema. This allows the system to know how to map the incoming data to the Azure Active Directory (Azure AD) schema. "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationSynchronizationDataProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the data provider to use as the synchronization source for a [educationSynchronizationProfile].

> [!NOTE]
> This complex type is abstract. Refer to the specific types of data providers listed.

## Providers

| Data Provider                                                             | Description                                                                                        |
| :------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------- |
| [educationCsvDataProvider]                                                | CSV files uploaded to the Profile's [SAS URL](../api/educationsynchronizationprofile-uploadurl.md) |
| [educationOneRosterApiDataProvider](educationonerosterapidataprovider.md) | OneRoster v1.1 API                                                                                 |
| [educationPowerSchoolDataProvider]                                        | PowerSchool API                                                                                    |

[educationsynchronizationprofile]: educationsynchronizationprofile.md
[educationcsvdataprovider]: educationCsvDataProvider.md
[educationsynchronizationdataprovider]: educationSynchronizationDataProvider.md
[educationpowerschooldataprovider]: educationPowerSchoolDataProvider.md
[educationcsvdataprovider]: educationCsvDataProvider.md


