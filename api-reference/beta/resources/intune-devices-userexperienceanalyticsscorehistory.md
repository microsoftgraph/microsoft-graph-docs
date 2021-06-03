---
title: "userExperienceAnalyticsScoreHistory resource type"
description: "The user experience analytics device startup score history."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsScoreHistory resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics device startup score history.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsScoreHistories](../api/intune-devices-userexperienceanalyticsscorehistory-list.md)|[userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md) collection|List properties and relationships of the [userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md) objects.|
|[Get userExperienceAnalyticsScoreHistory](../api/intune-devices-userexperienceanalyticsscorehistory-get.md)|[userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md)|Read properties and relationships of the [userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md) object.|
|[Create userExperienceAnalyticsScoreHistory](../api/intune-devices-userexperienceanalyticsscorehistory-create.md)|[userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md)|Create a new [userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md) object.|
|[Delete userExperienceAnalyticsScoreHistory](../api/intune-devices-userexperienceanalyticsscorehistory-delete.md)|None|Deletes a [userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md).|
|[Update userExperienceAnalyticsScoreHistory](../api/intune-devices-userexperienceanalyticsscorehistory-update.md)|[userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md)|Update the properties of a [userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics device startup process.|
|startupDateTime|DateTimeOffset|The user experience analytics device startup date time.|
|overallScore|Int32|User experience analytics overall score. Score will be in the range 0-100, 100 is the ideal score. Valid values 0 to 100|
|startupScore|Int32|User experience analytics device startup score. Score will be in the range 0-100, 100 is the ideal score.|
|coreBootScore|Int32|The user experience analytics device core boot score. Score will be in the range 0-100, 100 is the ideal score.|
|coreSigninScore|Int32|The User experience analytics device core sign-in score. Score will be in the range 0-100, 100 is the ideal score.|
|recommendedSoftwareScore|Int32|The User experience analytics device core sign-in score. Score will be in the range 0-100, 100 is the ideal score.|
|restartScore|Int32|Restart score. Score will be in the range 0-100, 100 is the ideal score, 0 indicates excessive restarts. Valid values 0 to 9999999|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsScoreHistory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsScoreHistory",
  "id": "String (identifier)",
  "startupDateTime": "String (timestamp)",
  "overallScore": 1024,
  "startupScore": 1024,
  "coreBootScore": 1024,
  "coreSigninScore": 1024,
  "recommendedSoftwareScore": 1024,
  "restartScore": 1024
}
```




