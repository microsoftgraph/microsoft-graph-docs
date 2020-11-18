---
title: "deviceEnrollmentConfiguration resource type"
description: "The Base Class of Device Enrollment Configuration"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceEnrollmentConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Base Class of Device Enrollment Configuration

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceEnrollmentConfigurations](../api/intune-shared-deviceenrollmentconfiguration-list.md)|[deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md) collection|List properties and relationships of the [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md) objects.|
|[Get deviceEnrollmentConfiguration](../api/intune-shared-deviceenrollmentconfiguration-get.md)|[deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)|Read properties and relationships of the [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md) object.|
|**Onboarding**|
|[setPriority action](../api/intune-shared-deviceenrollmentconfiguration-setpriority.md)|None|Not yet documented|
|[assign action](../api/intune-shared-deviceenrollmentconfiguration-assign.md)|None|Not yet documented|
|**Policy Set**|
|[hasPayloadLinks action](../api/intune-shared-deviceenrollmentconfiguration-haspayloadlinks.md)|[hasPayloadLinkResultItem](../resources/intune-policyset-haspayloadlinkresultitem.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the account|
|displayName|String|The display name of the device enrollment configuration|
|description|String|The description of the device enrollment configuration|
|priority|Int32|Priority is used when a user exists in multiple groups that are assigned enrollment configuration. Users are subject only to the configuration with the lowest priority value.|
|createdDateTime|DateTimeOffset|Created date time in UTC of the device enrollment configuration|
|lastModifiedDateTime|DateTimeOffset|Last modified date time in UTC of the device enrollment configuration|
|version|Int32|The version of the device enrollment configuration|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|**Onboarding**|
|assignments|[enrollmentConfigurationAssignment](../resources/intune-onboarding-enrollmentconfigurationassignment.md) collection|The list of group assignments for the device configuration profile|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceEnrollmentConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceEnrollmentConfiguration",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "priority": 1024,
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "version": 1024
}
```




