---
title: "enrollmentProfile resource type"
description: "The enrollmentProfile resource represents a collection of configurations which must be provided pre-enrollment to enable enrolling certain devices whose identities have been pre-staged. Pre-staged device identities are assigned to this type of profile to apply the profile's configurations at enrollment of the corresponding device."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# enrollmentProfile resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The enrollmentProfile resource represents a collection of configurations which must be provided pre-enrollment to enable enrolling certain devices whose identities have been pre-staged. Pre-staged device identities are assigned to this type of profile to apply the profile's configurations at enrollment of the corresponding device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List enrollmentProfiles](../api/intune-enrollment-enrollmentprofile-list.md)|[enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md) collection|List properties and relationships of the [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md) objects.|
|[Get enrollmentProfile](../api/intune-enrollment-enrollmentprofile-get.md)|[enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md)|Read properties and relationships of the [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md) object.|
|[Create enrollmentProfile](../api/intune-enrollment-enrollmentprofile-create.md)|[enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md)|Create a new [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md) object.|
|[Delete enrollmentProfile](../api/intune-enrollment-enrollmentprofile-delete.md)|None|Deletes a [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md).|
|[Update enrollmentProfile](../api/intune-enrollment-enrollmentprofile-update.md)|[enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md)|Update the properties of a [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md) object.|
|[setDefaultProfile action](../api/intune-enrollment-enrollmentprofile-setdefaultprofile.md)|None|Not yet documented|
|[exportMobileConfig function](../api/intune-enrollment-enrollmentprofile-exportmobileconfig.md)|String|Exports the mobile configuration|
|[updateDeviceProfileAssignment action](../api/intune-enrollment-enrollmentprofile-updatedeviceprofileassignment.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object|
|displayName|String|Name of the profile|
|description|String|Description of the profile|
|requiresUserAuthentication|Boolean|Indicates if the profile requires user authentication|
|configurationEndpointUrl|String|Configuration endpoint url to use for Enrollment|
|enableAuthenticationViaCompanyPortal|Boolean|Indicates to authenticate with Apple Setup Assistant instead of Company Portal.|
|requireCompanyPortalOnSetupAssistantEnrolledDevices|Boolean|Indicates that Company Portal is required on setup assistant enrolled devices|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.enrollmentProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enrollmentProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "requiresUserAuthentication": true,
  "configurationEndpointUrl": "String",
  "enableAuthenticationViaCompanyPortal": true,
  "requireCompanyPortalOnSetupAssistantEnrolledDevices": true
}
```




