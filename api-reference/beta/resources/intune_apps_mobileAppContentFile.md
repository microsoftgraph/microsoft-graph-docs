# mobileAppContentFile resource type

Contains properties for a single installer file that is associated with a given mobileAppContent version.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List mobileAppContentFiles](../api/intune_apps_mobileAppContentFile_list.md)|[mobileAppContentFile](../resources/intune_apps_mobileAppContentFile.md) collection|List properties and relationships of the [mobileAppContentFile](../resources/intune_apps_mobileAppContentFile.md) objects.|
|[Get mobileAppContentFile](../api/intune_apps_mobileAppContentFile_get.md)|[mobileAppContentFile](../resources/intune_apps_mobileAppContentFile.md)|Read properties and relationships of the [mobileAppContentFile](../resources/intune_apps_mobileAppContentFile.md) object.|
|[Create mobileAppContentFile](../api/intune_apps_mobileAppContentFile_create.md)|[mobileAppContentFile](../resources/intune_apps_mobileAppContentFile.md)|Create a new [mobileAppContentFile](../resources/intune_apps_mobileAppContentFile.md) object.|
|[Delete mobileAppContentFile](../api/intune_apps_mobileAppContentFile_delete.md)|None|Deletes a [mobileAppContentFile](../resources/intune_apps_mobileAppContentFile.md).|
|[Update mobileAppContentFile](../api/intune_apps_mobileAppContentFile_update.md)|[mobileAppContentFile](../resources/intune_apps_mobileAppContentFile.md)|Update the properties of a [mobileAppContentFile](../resources/intune_apps_mobileAppContentFile.md) object.|
|[commit action](../api/intune_apps_mobileAppContentFile_commit.md)|None|Not yet documented|
|[renewUpload action](../api/intune_apps_mobileAppContentFile_renewUpload.md)|None|Not yet documented|

### Properties
|Property|Type|Description|
|---|---|---|
|azureStorageUri|String|The Azure Storage URI.|
|isCommitted|Boolean|A value indicating whether the file is committed.|
|id|String|The File Id.|
|createdDateTime|DateTimeOffset|The time the file was created.|
|name|String|the file name.|
|size|Int64|The size of the file prior to encryption.|
|sizeEncrypted|Int64|The size of the file after encryption.|
|azureStorageUriExpirationDateTime|DateTimeOffset|The time the Azure storage Uri expires.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppContentFile"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.mobileAppContentFile",
  "azureStorageUri": "String",
  "isCommitted": true,
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "name": "String",
  "size": 1024,
  "sizeEncrypted": 1024,
  "azureStorageUriExpirationDateTime": "String (timestamp)"
}
```



