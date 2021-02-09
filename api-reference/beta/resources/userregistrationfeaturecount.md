---
title: "userRegistrationFeatureCount resource type"
description: "Number of users registered or capable for Multi-Factor Authentication, Self-Service Password Reset and Passwordless Authentication."
author: "danielwood95"
localization_priority: Normal
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userRegistrationFeatureCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the number of users registered or capable for Multi-Factor Authentication, Self-Service Password Reset and Passwordless Authentication.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|feature|authenticationMethodFeature|Number of users registered or capable for Multi-Factor Authentication, Self-Service Password Reset and Passwordless Authentication. Possible values are: `ssprRegistered`, `ssprEnabled`, `ssprCapable`, `passwordlessCapable`, `mfaCapable`.|
|userCount|Int64|Number of users.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userRegistrationFeatureCount"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationFeatureCount",
  "feature": "String",
  "userCount": "Integer"
}
```
