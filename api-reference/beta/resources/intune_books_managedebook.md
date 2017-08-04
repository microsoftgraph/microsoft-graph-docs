#  resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

An abstract class containing the base properties for Managed eBook.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedEBooks](../api/intune_books_managedebook_list.md)|[managedEBook](../resources/intune_books_managedebook.md) collection|List properties and relationships of the [managedEBook](../resources/intune_books_managedebook.md) objects.|
|[Get managedEBook](../api/intune_books_managedebook_get.md)|[managedEBook](../resources/intune_books_managedebook.md)|Read properties and relationships of the [managedEBook](../resources/intune_books_managedebook.md) object.|
|[assign action](../api/intune_books_managedebook_assign.md)|None|Not yet documented|
|[List eBookGroupAssignments](../api/intune_books_ebookgroupassignment_list.md)|[eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) collection|List properties and relationships of the [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) objects.|
|[Get eBookInstallSummary](../api/intune_books_ebookinstallsummary_get.md)|[eBookInstallSummary](../resources/intune_books_ebookinstallsummary.md)|Read properties and relationships of the [eBookInstallSummary](../resources/intune_books_ebookinstallsummary.md) object.|
|[List deviceInstallStates](../api/intune_books_deviceinstallstate_list.md)|[deviceInstallState](../resources/intune_books_deviceinstallstate.md) collection|List properties and relationships of the [deviceInstallState](../resources/intune_books_deviceinstallstate.md) objects.|
|[List userInstallStateSummaries](../api/intune_books_userinstallstatesummary_list.md)|[userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md) collection|List properties and relationships of the [userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|displayName|String|Name of the eBook.|
|description|String|Description.|
|publisher|String|Publisher.|
|publishedDateTime|DateTimeOffset|The date and time when the eBook was published.|
|largeCover|[mimeContent](../resources/intune_books_mimecontent.md)|Book cover.|
|createdDateTime|DateTimeOffset|The date and time when the eBook file was created.|
|lastModifiedDateTime|DateTimeOffset|The date and time when teh eBook was last modified.|
|informationUrl|String|The more information Url.|
|privacyInformationUrl|String|The privacy statement Url.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) collection|The list of group assignments for this eBook.|
|installSummary|[eBookInstallSummary](../resources/intune_books_ebookinstallsummary.md)|Mobile App Install Summary.|
|deviceStates|[deviceInstallState](../resources/intune_books_deviceinstallstate.md) collection|The list of installation states for this eBook.|
|userStateSummary|[userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md) collection|The list of installation states for this eBook.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedEBook"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedEBook",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "publisher": "String",
  "publishedDateTime": "String (timestamp)",
  "largeCover": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "informationUrl": "String",
  "privacyInformationUrl": "String"
}
```



