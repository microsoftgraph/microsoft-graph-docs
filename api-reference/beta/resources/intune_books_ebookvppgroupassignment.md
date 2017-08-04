#  resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used to assign a VPP eBook to a group.

Inherits from [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List eBookVppGroupAssignments](../api/intune_books_ebookvppgroupassignment_list.md)|[eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md) collection|List properties and relationships of the [eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md) objects.|
|[Get eBookVppGroupAssignment](../api/intune_books_ebookvppgroupassignment_get.md)|[eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md)|Read properties and relationships of the [eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md) object.|
|[Create eBookVppGroupAssignment](../api/intune_books_ebookvppgroupassignment_create.md)|[eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md)|Create a new [eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md) object.|
|[Delete eBookVppGroupAssignment](../api/intune_books_ebookvppgroupassignment_delete.md)|None|Deletes a [eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md).|
|[Update eBookVppGroupAssignment](../api/intune_books_ebookvppgroupassignment_update.md)|[eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md)|Update the properties of a [eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md) object.|
|[Get managedEBook](../api/intune_books_managedebook_get.md)|[managedEBook](../resources/intune_books_managedebook.md)|Read properties and relationships of the [managedEBook](../resources/intune_books_managedebook.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the eBook to. Inherited from [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md)|
|id|String|Key of the entity. Inherited from [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md)|
|installIntent|String|The install intent defined by the admin. Inherited from [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) Possible values are: `notApplicable`, `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|
|useDeviceLicensing|Boolean|Whether or not to use device licensing.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|eBook|[managedEBook](../resources/intune_books_managedebook.md)|The navigation link to the eBook being targeted. Inherited from [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.eBookVppGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.eBookVppGroupAssignment",
  "targetGroupId": "String",
  "id": "String (identifier)",
  "installIntent": "String",
  "useDeviceLicensing": true
}
```



