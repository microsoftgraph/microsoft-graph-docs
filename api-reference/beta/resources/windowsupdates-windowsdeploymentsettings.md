---
title: "windowsDeploymentSettings resource type"
description: "Settings controlling when and how the service deploys a Windows 10 update."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# windowsDeploymentSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings controlling when and how the service deploys a Windows 10 update.

Inherits from [deploymentSettings](../resources/windowsupdates-deploymentsettings.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|monitoring|[microsoft.graph.windowsUpdates.monitoringSettings](../resources/windowsupdates-monitoringsettings.md)|Settings governing conditions to monitor and automated actions to take. Inherited from [deploymentSettings](../resources/windowsupdates-deploymentsettings.md).|
|rollout|[microsoft.graph.windowsUpdates.rolloutSettings](../resources/windowsupdates-rolloutsettings.md)|Settings governing how the content is rolled out. Inherited from [deploymentSettings](../resources/windowsupdates-deploymentsettings.md).|
|userExperience|[microsoft.graph.windowsUpdates.userExperienceSettings](../resources/windowsupdates-userexperiencesettings.md)|Settings governing the user's update experience on a device.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.windowsDeploymentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.windowsDeploymentSettings",
  "rollout": {
    "@odata.type": "microsoft.graph.windowsUpdates.rolloutSettings"
  },
  "monitoring": {
    "@odata.type": "microsoft.graph.windowsUpdates.monitoringSettings"
  },
  "userExperience": {
    "@odata.type": "microsoft.graph.windowsUpdates.userExperienceSettings"
  }
}
```

