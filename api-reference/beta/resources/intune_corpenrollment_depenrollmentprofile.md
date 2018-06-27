# depEnrollmentProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The depEnrollmentProfile resource represents an Apple Device Enrollment Program (DEP) enrollment profile. This type of profile must be assigned to Apple DEP serial numbers before the corresponding devices can enroll via DEP.

Inherits from [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List depEnrollmentProfiles](../api/intune_corpenrollment_depenrollmentprofile_list.md)|[depEnrollmentProfile](../resources/intune_corpenrollment_depenrollmentprofile.md) collection|List properties and relationships of the [depEnrollmentProfile](../resources/intune_corpenrollment_depenrollmentprofile.md) objects.|
|[Get depEnrollmentProfile](../api/intune_corpenrollment_depenrollmentprofile_get.md)|[depEnrollmentProfile](../resources/intune_corpenrollment_depenrollmentprofile.md)|Read properties and relationships of the [depEnrollmentProfile](../resources/intune_corpenrollment_depenrollmentprofile.md) object.|
|[Create depEnrollmentProfile](../api/intune_corpenrollment_depenrollmentprofile_create.md)|[depEnrollmentProfile](../resources/intune_corpenrollment_depenrollmentprofile.md)|Create a new [depEnrollmentProfile](../resources/intune_corpenrollment_depenrollmentprofile.md) object.|
|[Delete depEnrollmentProfile](../api/intune_corpenrollment_depenrollmentprofile_delete.md)|None|Deletes a [depEnrollmentProfile](../resources/intune_corpenrollment_depenrollmentprofile.md).|
|[Update depEnrollmentProfile](../api/intune_corpenrollment_depenrollmentprofile_update.md)|[depEnrollmentProfile](../resources/intune_corpenrollment_depenrollmentprofile.md)|Update the properties of a [depEnrollmentProfile](../resources/intune_corpenrollment_depenrollmentprofile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object Inherited from [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md)|
|displayName|String|Name of the profile Inherited from [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md)|
|description|String|Description of the profile Inherited from [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md)|
|requiresUserAuthentication|Boolean|Indicates if the profile requires user authentication Inherited from [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md)|
|configurationEndpointUrl|String|Configuration endpoint url to use for Enrollment Inherited from [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md)|
|enableAuthenticationViaCompanyPortal|Boolean|Indicates to authenticate with Apple Setup Assistant instead of Company Portal. Inherited from [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md)|
|supervisedModeEnabled|Boolean|Supervised mode, True to enable, false otherwise. See https://docs.microsoft.com/en-us/intune/deploy-use/enroll-devices-in-microsoft-intune for additional information.|
|supportDepartment|String|Support department information|
|passCodeDisabled|Boolean|Indicates if Passcode setup pane is disabled|
|isMandatory|Boolean|Indicates if the profile is mandatory|
|locationDisabled|Boolean|Indicates if Location service setup pane is disabled|
|supportPhoneNumber|String|Support phone number|
|iTunesPairingMode|[iTunesPairingMode](../resources/intune_corpenrollment_itunespairingmode.md)|Indicates the iTunes pairing mode. Possible values are: `disallow`, `allow`, `requiresCertificate`.|
|profileRemovalDisabled|Boolean|Indicates if the profile removal option is disabled|
|managementCertificates|[managementCertificateWithThumbprint](../resources/intune_corpenrollment_managementcertificatewiththumbprint.md) collection|Management certificates for Apple Configurator|
|restoreBlocked|Boolean|Indicates if Restore setup pane is blocked|
|restoreFromAndroidDisabled|Boolean|Indicates if Restore from Android is disabled|
|appleIdDisabled|Boolean|Indicates if Apple id setup pane is disabled|
|termsAndConditionsDisabled|Boolean|Indicates if 'Terms and Conditions' setup pane is disabled|
|touchIdDisabled|Boolean|Indicates if touch id setup pane is disabled|
|applePayDisabled|Boolean|Indicates if Apple pay setup pane is disabled|
|zoomDisabled|Boolean|Indicates if zoom setup pane is disabled|
|siriDisabled|Boolean|Indicates if siri setup pane is disabled|
|diagnosticsDisabled|Boolean|Indicates if diagnostics setup pane is disabled|
|macOSRegistrationDisabled|Boolean|Indicates if Mac OS registration is disabled|
|macOSFileVaultDisabled|Boolean|Indicates if Mac OS file vault is disabled|
|awaitDeviceConfiguredConfirmation|Boolean|Indicates if the device will need to wait for configured confirmation|
|sharedIPadMaximumUserCount|Int32|This specifies the maximum number of users that can use a shared iPad. Only applicable in shared iPad mode.|
|enableSharedIPad|Boolean|This indicates whether the device is to be enrolled in a mode which enables multi user scenarios. Only applicable in shared iPads.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.depEnrollmentProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.depEnrollmentProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "requiresUserAuthentication": true,
  "configurationEndpointUrl": "String",
  "enableAuthenticationViaCompanyPortal": true,
  "supervisedModeEnabled": true,
  "supportDepartment": "String",
  "passCodeDisabled": true,
  "isMandatory": true,
  "locationDisabled": true,
  "supportPhoneNumber": "String",
  "iTunesPairingMode": "String",
  "profileRemovalDisabled": true,
  "managementCertificates": [
    {
      "@odata.type": "microsoft.graph.managementCertificateWithThumbprint",
      "thumbprint": "String",
      "certificate": "String"
    }
  ],
  "restoreBlocked": true,
  "restoreFromAndroidDisabled": true,
  "appleIdDisabled": true,
  "termsAndConditionsDisabled": true,
  "touchIdDisabled": true,
  "applePayDisabled": true,
  "zoomDisabled": true,
  "siriDisabled": true,
  "diagnosticsDisabled": true,
  "macOSRegistrationDisabled": true,
  "macOSFileVaultDisabled": true,
  "awaitDeviceConfiguredConfirmation": true,
  "sharedIPadMaximumUserCount": 1024,
  "enableSharedIPad": true
}
```



