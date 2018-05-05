# iosVppEBook resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A class containing the properties for iOS Vpp eBook.

Inherits from [managedEBook](../resources/intune_books_managedebook.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosVppEBooks](../api/intune_books_iosvppebook_list.md)|[iosVppEBook](../resources/intune_books_iosvppebook.md) collection|List properties and relationships of the [iosVppEBook](../resources/intune_books_iosvppebook.md) objects.|
|[Get iosVppEBook](../api/intune_books_iosvppebook_get.md)|[iosVppEBook](../resources/intune_books_iosvppebook.md)|Read properties and relationships of the [iosVppEBook](../resources/intune_books_iosvppebook.md) object.|
|[Create iosVppEBook](../api/intune_books_iosvppebook_create.md)|[iosVppEBook](../resources/intune_books_iosvppebook.md)|Create a new [iosVppEBook](../resources/intune_books_iosvppebook.md) object.|
|[Delete iosVppEBook](../api/intune_books_iosvppebook_delete.md)|None|Deletes a [iosVppEBook](../resources/intune_books_iosvppebook.md).|
|[Update iosVppEBook](../api/intune_books_iosvppebook_update.md)|[iosVppEBook](../resources/intune_books_iosvppebook.md)|Update the properties of a [iosVppEBook](../resources/intune_books_iosvppebook.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|displayName|String|Name of the eBook. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|description|String|Description. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|publisher|String|Publisher. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|publishedDateTime|DateTimeOffset|The date and time when the eBook was published. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|largeCover|[mimeContent](../resources/intune_shared_mimecontent.md)|Book cover. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|createdDateTime|DateTimeOffset|The date and time when the eBook file was created. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time when the eBook was last modified. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|informationUrl|String|The more information Url. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|vppTokenId|Guid|The Vpp token ID.|
|appleId|String|The Apple ID associated with Vpp token.|
|vppOrganizationName|String|The Vpp token's organization name.|
|genres|String collection|Genres.|
|language|String|Language.|
|seller|String|Seller.|
|totalLicenseCount|Int32|Total license count.|
|usedLicenseCount|Int32|Used license count.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[managedEBookAssignment](../resources/intune_books_managedebookassignment.md) collection|The list of assignments for this eBook. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|installSummary|[eBookInstallSummary](../resources/intune_books_ebookinstallsummary.md)|Mobile App Install Summary. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|deviceStates|[deviceInstallState](../resources/intune_books_deviceinstallstate.md) collection|The list of installation states for this eBook. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|
|userStateSummary|[userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md) collection|The list of installation states for this eBook. Inherited from [managedEBook](../resources/intune_books_managedebook.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosVppEBook"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosVppEBook",
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
  "privacyInformationUrl": "String",
  "vppTokenId": "<Unknown Primitive Type Edm.Guid>",
  "appleId": "String",
  "vppOrganizationName": "String",
  "genres": [
    "String"
  ],
  "language": "String",
  "seller": "String",
  "totalLicenseCount": 1024,
  "usedLicenseCount": 1024
}
```



