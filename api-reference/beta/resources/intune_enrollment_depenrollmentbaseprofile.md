﻿# depEnrollmentBaseProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The DepEnrollmentBaseProfile resource represents an Apple Device Enrollment Program (DEP) enrollment profile. This type of profile must be assigned to Apple DEP serial numbers before the corresponding devices can enroll via DEP.

Inherits from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List depEnrollmentBaseProfiles](../api/intune_enrollment_depenrollmentbaseprofile_list.md)|[depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md) collection|List properties and relationships of the [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md) objects.|
|[Get depEnrollmentBaseProfile](../api/intune_enrollment_depenrollmentbaseprofile_get.md)|[depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|Read properties and relationships of the [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object Inherited from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)|
|displayName|String|Name of the profile Inherited from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)|
|description|String|Description of the profile Inherited from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)|
|requiresUserAuthentication|Boolean|Indicates if the profile requires user authentication Inherited from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)|
|configurationEndpointUrl|String|Configuration endpoint url to use for Enrollment Inherited from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)|
|enableAuthenticationViaCompanyPortal|Boolean|Indicates to authenticate with Apple Setup Assistant instead of Company Portal. Inherited from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)|
|isDefault|Boolean|Indicates if this is the default profile|
|supervisedModeEnabled|Boolean|Supervised mode, True to enable, false otherwise. See https://docs.microsoft.com/en-us/intune/deploy-use/enroll-devices-in-microsoft-intune for additional information.|
|supportDepartment|String|Support department information|
|passCodeDisabled|Boolean|Indicates if Passcode setup pane is disabled|
|isMandatory|Boolean|Indicates if the profile is mandatory|
|locationDisabled|Boolean|Indicates if Location service setup pane is disabled|
|supportPhoneNumber|String|Support phone number|
|profileRemovalDisabled|Boolean|Indicates if the profile removal option is disabled|
|restoreBlocked|Boolean|Indicates if Restore setup pane is blocked|
|appleIdDisabled|Boolean|Indicates if Apple id setup pane is disabled|
|termsAndConditionsDisabled|Boolean|Indicates if 'Terms and Conditions' setup pane is disabled|
|touchIdDisabled|Boolean|Indicates if touch id setup pane is disabled|
|applePayDisabled|Boolean|Indicates if Apple pay setup pane is disabled|
|zoomDisabled|Boolean|Indicates if zoom setup pane is disabled|
|siriDisabled|Boolean|Indicates if siri setup pane is disabled|
|diagnosticsDisabled|Boolean|Indicates if diagnostics setup pane is disabled|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.depEnrollmentBaseProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.depEnrollmentBaseProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "requiresUserAuthentication": true,
  "configurationEndpointUrl": "String",
  "enableAuthenticationViaCompanyPortal": true,
  "isDefault": true,
  "supervisedModeEnabled": true,
  "supportDepartment": "String",
  "passCodeDisabled": true,
  "isMandatory": true,
  "locationDisabled": true,
  "supportPhoneNumber": "String",
  "profileRemovalDisabled": true,
  "restoreBlocked": true,
  "appleIdDisabled": true,
  "termsAndConditionsDisabled": true,
  "touchIdDisabled": true,
  "applePayDisabled": true,
  "zoomDisabled": true,
  "siriDisabled": true,
  "diagnosticsDisabled": true
}
```





