---
title: "deviceManagementSettingEnrollmentTypeConstraint resource type"
description: "Constraint that enforces the enrollment types applied to a setting"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementSettingEnrollmentTypeConstraint resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Constraint that enforces the enrollment types applied to a setting


Inherits from [deviceManagementConstraint](../resources/intune-deviceintent-devicemanagementconstraint.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|enrollmentTypes|String collection|List of enrollment types|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementSettingEnrollmentTypeConstraint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementSettingEnrollmentTypeConstraint",
  "enrollmentTypes": [
    "String"
  ]
}
```




