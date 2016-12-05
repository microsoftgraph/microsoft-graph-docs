# enrollmentProfile resource type

The enrollmentProfile resource represents a collection of configurations which must be provided pre-enrollment to enable enrolling certain devices whose identities have been pre-staged. Pre-staged device identities are assigned to this type of profile to apply the profile's configurations at enrollment of the corresponding device.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List enrollmentProfiles](../api/intune_corpenrollment_enrollmentProfile_list.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md) collection|List properties and relationships of the [enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md) objects.|
|[Get enrollmentProfile](../api/intune_corpenrollment_enrollmentProfile_get.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md)|Read properties and relationships of the [enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md) object.|
|[Create enrollmentProfile](../api/intune_corpenrollment_enrollmentProfile_create.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md)|Create a new [enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md) object.|
|[Delete enrollmentProfile](../api/intune_corpenrollment_enrollmentProfile_delete.md)|None|Deletes a [enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md).|
|[Update enrollmentProfile](../api/intune_corpenrollment_enrollmentProfile_update.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md)|Update the properties of a [enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md) object.|
|[exportMobileConfig function](../api/intune_corpenrollment_enrollmentProfile_exportMobileConfig.md)|String|Not yet documented|
|[updateDeviceProfileAssignment action](../api/intune_corpenrollment_enrollmentProfile_updateDeviceProfileAssignment.md)|None|Not yet documented|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|The GUID for the object|
|displayName|String|Name of the profile|
|description|String|Description of the profile|
|requiresUserAuthentication|Boolean|Indicates if the profile requires user authentication|
|configurationEndpointUrl|String|Configuration endpoint url to use for Enrollment|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.enrollmentProfile"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.enrollmentProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "requiresUserAuthentication": true,
  "configurationEndpointUrl": "String"
}
```



