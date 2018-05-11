# managedEBookAssignment resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used to assign a eBook to a group.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedEBookAssignments](../api/intune_books_managedebookassignment_list.md)|[managedEBookAssignment](../resources/intune_books_managedebookassignment.md) collection|List properties and relationships of the [managedEBookAssignment](../resources/intune_books_managedebookassignment.md) objects.|
|[Get managedEBookAssignment](../api/intune_books_managedebookassignment_get.md)|[managedEBookAssignment](../resources/intune_books_managedebookassignment.md)|Read properties and relationships of the [managedEBookAssignment](../resources/intune_books_managedebookassignment.md) object.|
|[Create managedEBookAssignment](../api/intune_books_managedebookassignment_create.md)|[managedEBookAssignment](../resources/intune_books_managedebookassignment.md)|Create a new [managedEBookAssignment](../resources/intune_books_managedebookassignment.md) object.|
|[Delete managedEBookAssignment](../api/intune_books_managedebookassignment_delete.md)|None|Deletes a [managedEBookAssignment](../resources/intune_books_managedebookassignment.md).|
|[Update managedEBookAssignment](../api/intune_books_managedebookassignment_update.md)|[managedEBookAssignment](../resources/intune_books_managedebookassignment.md)|Update the properties of a [managedEBookAssignment](../resources/intune_books_managedebookassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune_shared_deviceandappmanagementassignmenttarget.md)|The assignment target for eBook.|
|installIntent|[installIntent](../resources/intune_books_installintent.md)|The install intent for eBook. Possible values are: `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedEBookAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedEBookAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  },
  "installIntent": "String"
}
```



