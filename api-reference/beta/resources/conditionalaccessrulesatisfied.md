---
title: "conditionalAccessRuleSatisfied resource type"
description: "List of the Conditional Access conditions and rules satisfied in a Conditional Access evaluation."
author: "besiler"
localization_priority: Normal
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# conditionalAccessRuleSatisfied resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conditionalAccessCondition|conditionalAccessConditions|Refers to the conditional access policy conditions that are satisfied. Possible values are: `none`, `application`, `users`, `devicePlatform`, `location`, `clientType`, `signInRisk`, `userRisk`, `time`, `deviceState`, `client`, `ipAddressSeenByAzureAD`, `ipAddressSeenByResourceProvider`, `unknownFutureValue`.|
|ruleSatisfied|conditionalAccessRule|Enum representing the Conditional Access rule that contributed to a match in a conditional access policy. Possible values are: `allApps`, `firstPartyApps`, `office365`, `appId`, `acr`, `appFilter`, `allUsers`, `guest`, `groupId`, `roleId`, `userId`, `allDevicePlatforms`, `devicePlatform`, `allLocations`, `insideCorpnet`, `allTrustedLocations`, `locationId`, `allDevices`, `deviceFilter`, `deviceState`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessRuleSatisfied"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessRuleSatisfied",
  "conditionalAccessCondition": "String",
  "ruleSatisfied": "String"
}
```

