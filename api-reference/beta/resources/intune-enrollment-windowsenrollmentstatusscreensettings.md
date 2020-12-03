---
title: "windowsEnrollmentStatusScreenSettings resource type"
description: "Enrollment status screen setting"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsEnrollmentStatusScreenSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enrollment status screen setting

## Properties
|Property|Type|Description|
|:---|:---|:---|
|hideInstallationProgress|Boolean|Show or hide installation progress to user|
|allowDeviceUseBeforeProfileAndAppInstallComplete|Boolean|Allow or block user to use device before profile and app installation complete|
|blockDeviceSetupRetryByUser|Boolean|Allow the user to retry the setup on installation failure|
|allowLogCollectionOnInstallFailure|Boolean|Allow or block log collection on installation failure|
|customErrorMessage|String|Set custom error message to show upon installation failure|
|installProgressTimeoutInMinutes|Int32|Set installation progress timeout in minutes|
|allowDeviceUseOnInstallFailure|Boolean|Allow the user to continue using the device on installation failure|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsEnrollmentStatusScreenSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsEnrollmentStatusScreenSettings",
  "hideInstallationProgress": true,
  "allowDeviceUseBeforeProfileAndAppInstallComplete": true,
  "blockDeviceSetupRetryByUser": true,
  "allowLogCollectionOnInstallFailure": true,
  "customErrorMessage": "String",
  "installProgressTimeoutInMinutes": 1024,
  "allowDeviceUseOnInstallFailure": true
}
```




