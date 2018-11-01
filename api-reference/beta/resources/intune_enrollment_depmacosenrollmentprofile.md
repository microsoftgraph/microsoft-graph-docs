---
apiDocType: resourcePageType
---
# depMacOSEnrollmentProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The DepMacOSEnrollmentProfile resource represents an Apple Device Enrollment Program (DEP) enrollment profile specific to macOS configuration. This type of profile must be assigned to Apple DEP serial numbers before the corresponding devices can enroll via DEP.

Inherits from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List depMacOSEnrollmentProfiles](../api/intune_enrollment_depmacosenrollmentprofile_list.md)|[depMacOSEnrollmentProfile](../resources/intune_enrollment_depmacosenrollmentprofile.md) collection|List properties and relationships of the [depMacOSEnrollmentProfile](../resources/intune_enrollment_depmacosenrollmentprofile.md) objects.|
|[Get depMacOSEnrollmentProfile](../api/intune_enrollment_depmacosenrollmentprofile_get.md)|[depMacOSEnrollmentProfile](../resources/intune_enrollment_depmacosenrollmentprofile.md)|Read properties and relationships of the [depMacOSEnrollmentProfile](../resources/intune_enrollment_depmacosenrollmentprofile.md) object.|
|[Create depMacOSEnrollmentProfile](../api/intune_enrollment_depmacosenrollmentprofile_create.md)|[depMacOSEnrollmentProfile](../resources/intune_enrollment_depmacosenrollmentprofile.md)|Create a new [depMacOSEnrollmentProfile](../resources/intune_enrollment_depmacosenrollmentprofile.md) object.|
|[Delete depMacOSEnrollmentProfile](../api/intune_enrollment_depmacosenrollmentprofile_delete.md)|None|Deletes a [depMacOSEnrollmentProfile](../resources/intune_enrollment_depmacosenrollmentprofile.md).|
|[Update depMacOSEnrollmentProfile](../api/intune_enrollment_depmacosenrollmentprofile_update.md)|[depMacOSEnrollmentProfile](../resources/intune_enrollment_depmacosenrollmentprofile.md)|Update the properties of a [depMacOSEnrollmentProfile](../resources/intune_enrollment_depmacosenrollmentprofile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object Inherited from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)|
|displayName|String|Name of the profile Inherited from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)|
|description|String|Description of the profile Inherited from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)|
|requiresUserAuthentication|Boolean|Indicates if the profile requires user authentication Inherited from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)|
|configurationEndpointUrl|String|Configuration endpoint url to use for Enrollment Inherited from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)|
|enableAuthenticationViaCompanyPortal|Boolean|Indicates to authenticate with Apple Setup Assistant instead of Company Portal. Inherited from [enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md)|
|isDefault|Boolean|Indicates if this is the default profile Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|supervisedModeEnabled|Boolean|Supervised mode, True to enable, false otherwise. See https://docs.microsoft.com/en-us/intune/deploy-use/enroll-devices-in-microsoft-intune for additional information. Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|supportDepartment|String|Support department information Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|passCodeDisabled|Boolean|Indicates if Passcode setup pane is disabled Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|isMandatory|Boolean|Indicates if the profile is mandatory Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|locationDisabled|Boolean|Indicates if Location service setup pane is disabled Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|supportPhoneNumber|String|Support phone number Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|profileRemovalDisabled|Boolean|Indicates if the profile removal option is disabled Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|restoreBlocked|Boolean|Indicates if Restore setup pane is blocked Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|appleIdDisabled|Boolean|Indicates if Apple id setup pane is disabled Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|termsAndConditionsDisabled|Boolean|Indicates if 'Terms and Conditions' setup pane is disabled Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|touchIdDisabled|Boolean|Indicates if touch id setup pane is disabled Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|applePayDisabled|Boolean|Indicates if Apple pay setup pane is disabled Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|zoomDisabled|Boolean|Indicates if zoom setup pane is disabled Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|siriDisabled|Boolean|Indicates if siri setup pane is disabled Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|diagnosticsDisabled|Boolean|Indicates if diagnostics setup pane is disabled Inherited from [depEnrollmentBaseProfile](../resources/intune_enrollment_depenrollmentbaseprofile.md)|
|registrationDisabled|Boolean|Indicates if registration is disabled|
|fileVaultDisabled|Boolean|Indicates if file vault is disabled|
|iCloudDiagnosticsDisabled|Boolean|Indicates if iCloud Analytics screen is disabled|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.depMacOSEnrollmentProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.depMacOSEnrollmentProfile",
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
  "diagnosticsDisabled": true,
  "registrationDisabled": true,
  "fileVaultDisabled": true,
  "iCloudDiagnosticsDisabled": true
}
```





