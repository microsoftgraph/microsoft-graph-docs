---
title: "conditionalAccessConditionSet resource type"
description: "Represents the type of conditions that govern when the policy applies."
localization_priority: Normal
author: "videor"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# conditionalAccessConditionSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the type of conditions that govern when the policy applies.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|applications|[conditionalAccessApplications](conditionalaccessapplications.md)| Applications and user actions included in and excluded from the policy. Required. |
|users|[conditionalAccessUsers](conditionalaccessusers.md)| Users, groups, and roles included in and excluded from the policy. Required. |
|clientAppTypes|String collection| Client application types included in the policy. Possible values are: `all`, `browser`, `mobileAppsAndDesktopClients`, `exchangeActiveSync`, `easSupported`, `other`.|
|deviceStates|[conditionalAccessDeviceStates](conditionalaccessdevicestates.md)| Device states in the policy. |
|devices|[conditionalAccessDevices](conditionalaccessdevices.md)| Devices in the policy. |
|locations|[conditionalAccessLocations](conditionalaccesslocations.md)| Locations included in and excluded from the policy. |
|platforms|[conditionalAccessPlatforms](conditionalaccessplatforms.md)| Platforms included in and excluded from the policy. |
|signInRiskLevels|String collection| Sign-in risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `none`.|
|userRiskLevels|String collection| User risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `none`.|

>**Note:** 

>**clientAppType** `modern` is going to be deprecated and replaced by `mobileAppsAndDesktopClients`. 

>**clientAppType** `easUnsupported` is going to be deprecated in favor of `exchangeActiveSync` which includes EAS supported and unsupported platforms. 

>We are deprecating the **deviceStates** condition, and it may be removed in the future. Going forward, use **devices** condition.

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "clientAppTypes",
    "deviceStates",
    "devices",
    "locations",
    "platforms",
    "signInRiskLevels"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessConditionSet",
  "baseType": null
}-->

```json
{
  "applications": {"@odata.type": "microsoft.graph.conditionalAccessApplications"},
  "users": {"@odata.type": "microsoft.graph.conditionalAccessUsers"},
  "clientAppTypes": ["String"],
  "deviceStates": {"@odata.type": "microsoft.graph.conditionalAccessDeviceStates"},
  "devices": {"@odata.type": "microsoft.graph.conditionalAccessDevices"},
  "locations": {"@odata.type": "microsoft.graph.conditionalAccessLocations"},
  "platforms": {"@odata.type": "microsoft.graph.conditionalAccessPlatforms"},
  "signInRiskLevels": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessConditionset resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


