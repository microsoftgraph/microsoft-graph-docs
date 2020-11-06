---
title: "educationPowerSchoolDataProvider resource"
description: "Used to set up the school data synchronization profile when PowerSchool is used as the input source."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationPowerSchoolDataProvider resource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to set up the school data synchronization profile when [PowerSchool](https://www.powerschool.com/solutions/student-information-system-sis/) is used as the input source.

Derived from [educationSynchronizationDataProvider](educationsynchronizationdataprovider.md).

## Properties

| Property                       | Type                                     | Description                                                                            |
| :----------------------------- | :--------------------------------------- | :------------------------------------------------------------------------------------- |
| allowTeachersInMultipleSchools | Boolean                                  | Indicates whether the source has multiple identifiers for a single student or teacher. |
| clientId                       | String                                   | The client ID used to connect to PowerSchool.                                          |
| clientSecret                   | String                                   | The client secret to authenticate the connection to the PowerSchool instance.          |
| connectionUrl                  | String                                   | The connection URL to the PowerSchool instance.                                        |
| schoolsIds                     | String collection                        | The list of schools to sync.                                                           |
| schoolYear                     | String                                   | The school year to sync.                                                               |
| customizations                 | [educationSynchronizationCustomizations] | Optional customization to be applied to the synchronization profile.                   |

[educationsynchronizationconnectionsettings]: educationsynchronizationconnectionsettings.md
[educationsynchronizationcustomizations]: educationsynchronizationcustomizations.md

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationPowerSchoolDataProvider"
}-->

```json
{
  "@odata.type": "microsoft.graph.educationPowerSchoolDataProvider",
  "connectionUrl": "String",
  "clientId": "String",
  "clientSecret": "String",
  "schoolsIds": ["String"],
  "schoolYear": "String",
  "allowTeachersInMultipleSchools": "Boolean",
  "customizations": {
    "@odata.type": "microsoft.graph.educationSynchronizationCustomizations"
  }
}
```


