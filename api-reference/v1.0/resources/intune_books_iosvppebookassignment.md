# iosVppEBookAssignment resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used to assign an iOS VPP EBook to a group.

Inherits from [managedEBookAssignment](../resources/intune_books_managedebookassignment.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosVppEBookAssignments](../api/intune_books_iosvppebookassignment_list.md)|[iosVppEBookAssignment](../resources/intune_books_iosvppebookassignment.md) collection|List properties and relationships of the [iosVppEBookAssignment](../resources/intune_books_iosvppebookassignment.md) objects.|
|[Get iosVppEBookAssignment](../api/intune_books_iosvppebookassignment_get.md)|[iosVppEBookAssignment](../resources/intune_books_iosvppebookassignment.md)|Read properties and relationships of the [iosVppEBookAssignment](../resources/intune_books_iosvppebookassignment.md) object.|
|[Create iosVppEBookAssignment](../api/intune_books_iosvppebookassignment_create.md)|[iosVppEBookAssignment](../resources/intune_books_iosvppebookassignment.md)|Create a new [iosVppEBookAssignment](../resources/intune_books_iosvppebookassignment.md) object.|
|[Delete iosVppEBookAssignment](../api/intune_books_iosvppebookassignment_delete.md)|None|Deletes a [iosVppEBookAssignment](../resources/intune_books_iosvppebookassignment.md).|
|[Update iosVppEBookAssignment](../api/intune_books_iosvppebookassignment_update.md)|[iosVppEBookAssignment](../resources/intune_books_iosvppebookassignment.md)|Update the properties of a [iosVppEBookAssignment](../resources/intune_books_iosvppebookassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [managedEBookAssignment](../resources/intune_books_managedebookassignment.md)|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune_shared_deviceandappmanagementassignmenttarget.md)|The assignment target for eBook. Inherited from [managedEBookAssignment](../resources/intune_books_managedebookassignment.md)|
|installIntent|[installIntent](../resources/intune_books_installintent.md)|The install intent for eBook. Inherited from [managedEBookAssignment](../resources/intune_books_managedebookassignment.md). Possible values are: `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosVppEBookAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosVppEBookAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  },
  "installIntent": "String"
}
```



