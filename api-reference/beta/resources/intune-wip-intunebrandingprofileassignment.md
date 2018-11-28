# intuneBrandingProfileAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

This entity contains the properties used to assign a branding profile to a group.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List intuneBrandingProfileAssignments](../api/intune-wip-intunebrandingprofileassignment-list.md)|[intuneBrandingProfileAssignment](../resources/intune-wip-intunebrandingprofileassignment.md) collection|List properties and relationships of the [intuneBrandingProfileAssignment](../resources/intune-wip-intunebrandingprofileassignment.md) objects.|
|[Get intuneBrandingProfileAssignment](../api/intune-wip-intunebrandingprofileassignment-get.md)|[intuneBrandingProfileAssignment](../resources/intune-wip-intunebrandingprofileassignment.md)|Read properties and relationships of the [intuneBrandingProfileAssignment](../resources/intune-wip-intunebrandingprofileassignment.md) object.|
|[Create intuneBrandingProfileAssignment](../api/intune-wip-intunebrandingprofileassignment-create.md)|[intuneBrandingProfileAssignment](../resources/intune-wip-intunebrandingprofileassignment.md)|Create a new [intuneBrandingProfileAssignment](../resources/intune-wip-intunebrandingprofileassignment.md) object.|
|[Delete intuneBrandingProfileAssignment](../api/intune-wip-intunebrandingprofileassignment-delete.md)|None|Deletes a [intuneBrandingProfileAssignment](../resources/intune-wip-intunebrandingprofileassignment.md).|
|[Update intuneBrandingProfileAssignment](../api/intune-wip-intunebrandingprofileassignment-update.md)|[intuneBrandingProfileAssignment](../resources/intune-wip-intunebrandingprofileassignment.md)|Update the properties of a [intuneBrandingProfileAssignment](../resources/intune-wip-intunebrandingprofileassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the entity.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-wip-deviceandappmanagementassignmenttarget.md)|Assignment target that the branding profile is assigned to.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.intuneBrandingProfileAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.intuneBrandingProfileAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  }
}
```











