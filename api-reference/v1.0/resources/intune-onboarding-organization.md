---
title: "organization resource type"
description: "The organization resource represents an instance of global settings and resources which operate and are provisioned at the tenant-level."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organization resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The organization resource represents an instance of global settings and resources which operate and are provisioned at the tenant-level.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List organizations](../api/intune-onboarding-organization-list.md)|[organization](../resources/intune-onboarding-organization.md) collection|List properties and relationships of the [organization](../resources/intune-onboarding-organization.md) objects.|
|[Get organization](../api/intune-onboarding-organization-get.md)|[organization](../resources/intune-onboarding-organization.md)|Read properties and relationships of the [organization](../resources/intune-onboarding-organization.md) object.|
|[Update organization](../api/intune-onboarding-organization-update.md)|[organization](../resources/intune-onboarding-organization.md)|Update the properties of a [organization](../resources/intune-onboarding-organization.md) object.|
|[setMobileDeviceManagementAuthority action](../api/intune-onboarding-organization-setmobiledevicemanagementauthority.md)|Int32|Set mobile device management authority|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object.|
|mobileDeviceManagementAuthority|[mdmAuthority](../resources/intune-onboarding-mdmauthority.md)|Mobile device management authority. Possible values are: `unknown`, `intune`, `sccm`, `office365`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.organization"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organization",
  "id": "String (identifier)",
  "mobileDeviceManagementAuthority": "String"
}
```




