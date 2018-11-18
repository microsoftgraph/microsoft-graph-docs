﻿# Create depMacOSEnrollmentProfile

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [depMacOSEnrollmentProfile](../resources/intune_enrollment_depmacosenrollmentprofile.md) object.
## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/depOnboardingSettings/{depOnboardingSettingId}/enrollmentProfiles
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the depMacOSEnrollmentProfile object.

The following table shows the properties that are required when you create the depMacOSEnrollmentProfile.

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



## Response
If successful, this method returns a `201 Created` response code and a [depMacOSEnrollmentProfile](../resources/intune_enrollment_depmacosenrollmentprofile.md) object in the response body.

## Example
### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/depOnboardingSettings/{depOnboardingSettingId}/enrollmentProfiles
Content-type: application/json
Content-length: 928

{
  "@odata.type": "#microsoft.graph.depMacOSEnrollmentProfile",
  "displayName": "Display Name value",
  "description": "Description value",
  "requiresUserAuthentication": true,
  "configurationEndpointUrl": "https://example.com/configurationEndpointUrl/",
  "enableAuthenticationViaCompanyPortal": true,
  "isDefault": true,
  "supervisedModeEnabled": true,
  "supportDepartment": "Support Department value",
  "passCodeDisabled": true,
  "isMandatory": true,
  "locationDisabled": true,
  "supportPhoneNumber": "Support Phone Number value",
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

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 977

{
  "@odata.type": "#microsoft.graph.depMacOSEnrollmentProfile",
  "id": "e433c95c-c95c-e433-5cc9-33e45cc933e4",
  "displayName": "Display Name value",
  "description": "Description value",
  "requiresUserAuthentication": true,
  "configurationEndpointUrl": "https://example.com/configurationEndpointUrl/",
  "enableAuthenticationViaCompanyPortal": true,
  "isDefault": true,
  "supervisedModeEnabled": true,
  "supportDepartment": "Support Department value",
  "passCodeDisabled": true,
  "isMandatory": true,
  "locationDisabled": true,
  "supportPhoneNumber": "Support Phone Number value",
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





