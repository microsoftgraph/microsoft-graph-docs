# eBookGroupAssignment resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used to assign a eBook to a group.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List eBookGroupAssignments](../api/intune_books_ebookgroupassignment_list.md)|[eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) collection|List properties and relationships of the [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) objects.|
|[Get eBookGroupAssignment](../api/intune_books_ebookgroupassignment_get.md)|[eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md)|Read properties and relationships of the [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) object.|
|[Create eBookGroupAssignment](../api/intune_books_ebookgroupassignment_create.md)|[eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md)|Create a new [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) object.|
|[Delete eBookGroupAssignment](../api/intune_books_ebookgroupassignment_delete.md)|None|Deletes a [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md).|
|[Update eBookGroupAssignment](../api/intune_books_ebookgroupassignment_update.md)|[eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md)|Update the properties of a [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) object.|
|[Get managedEBook](../api/intune_books_managedebook_get.md)|[managedEBook](../resources/intune_books_managedebook.md)|Read properties and relationships of the [managedEBook](../resources/intune_books_managedebook.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the eBook to.|
|id|String|Key of the entity.|
|installIntent|String|The install intent defined by the admin. Possible values are: `notApplicable`, `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|eBook|[managedEBook](../resources/intune_books_managedebook.md)|The navigation link to the eBook being targeted.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.eBookGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.eBookGroupAssignment",
  "targetGroupId": "String",
  "id": "String (identifier)",
  "installIntent": "String"
}
```



