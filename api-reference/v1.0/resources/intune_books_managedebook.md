# managedEBook resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

An abstract class containing the base properties for Managed eBook.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedEBooks](../api/intune_books_managedebook_list.md)|[managedEBook](../resources/intune_books_managedebook.md) collection|List properties and relationships of the [managedEBook](../resources/intune_books_managedebook.md) objects.|
|[Get managedEBook](../api/intune_books_managedebook_get.md)|[managedEBook](../resources/intune_books_managedebook.md)|Read properties and relationships of the [managedEBook](../resources/intune_books_managedebook.md) object.|
|[assign action](../api/intune_books_managedebook_assign.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|displayName|String|Name of the eBook.|
|description|String|Description.|
|publisher|String|Publisher.|
|publishedDateTime|DateTimeOffset|The date and time when the eBook was published.|
|largeCover|[mimeContent](../resources/intune_shared_mimecontent.md)|Book cover.|
|createdDateTime|DateTimeOffset|The date and time when the eBook file was created.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the eBook was last modified.|
|informationUrl|String|The more information Url.|
|privacyInformationUrl|String|The privacy statement Url.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[managedEBookAssignment](../resources/intune_books_managedebookassignment.md) collection|The list of assignments for this eBook.|
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
``` json
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



