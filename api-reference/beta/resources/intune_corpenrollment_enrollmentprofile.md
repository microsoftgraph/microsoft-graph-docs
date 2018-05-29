# enrollmentProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The enrollmentProfile resource represents a collection of configurations which must be provided pre-enrollment to enable enrolling certain devices whose identities have been pre-staged. Pre-staged device identities are assigned to this type of profile to apply the profile's configurations at enrollment of the corresponding device.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List enrollmentProfiles](../api/intune_corpenrollment_enrollmentprofile_list.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) collection|List properties and relationships of the [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) objects.|
|[Get enrollmentProfile](../api/intune_corpenrollment_enrollmentprofile_get.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md)|Read properties and relationships of the [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) object.|
|[Create enrollmentProfile](../api/intune_corpenrollment_enrollmentprofile_create.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md)|Create a new [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) object.|
|[Delete enrollmentProfile](../api/intune_corpenrollment_enrollmentprofile_delete.md)|None|Deletes a [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md).|
|[Update enrollmentProfile](../api/intune_corpenrollment_enrollmentprofile_update.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md)|Update the properties of a [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) object.|
|[exportMobileConfig function](../api/intune_corpenrollment_enrollmentprofile_exportmobileconfig.md)|String|Exports the mobile configuration of the current enrollment profile.|
|[updateDeviceProfileAssignment action](../api/intune_corpenrollment_enrollmentprofile_updatedeviceprofileassignment.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object|
|displayName|String|Name of the profile|
|description|String|Description of the profile|
|requiresUserAuthentication|Boolean|Indicates if the profile requires user authentication|
|configurationEndpointUrl|String|Configuration endpoint url to use for Enrollment|
|enableAuthenticationViaCompanyPortal|Boolean|Indicates to authenticate with Apple Setup Assistant instead of Company Portal.|

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
  "enableAuthenticationViaCompanyPortal": true
}
```



