# windowsInformationProtectionAppLockerFile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection AppLocker File
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsInformationProtectionAppLockerFiles](../api/intune_mam_windowsinformationprotectionapplockerfile_list.md)|[windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md) collection|List properties and relationships of the [windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md) objects.|
|[Get windowsInformationProtectionAppLockerFile](../api/intune_mam_windowsinformationprotectionapplockerfile_get.md)|[windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md)|Read properties and relationships of the [windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md) object.|
|[Create windowsInformationProtectionAppLockerFile](../api/intune_mam_windowsinformationprotectionapplockerfile_create.md)|[windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md)|Create a new [windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md) object.|
|[Delete windowsInformationProtectionAppLockerFile](../api/intune_mam_windowsinformationprotectionapplockerfile_delete.md)|None|Deletes a [windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md).|
|[Update windowsInformationProtectionAppLockerFile](../api/intune_mam_windowsinformationprotectionapplockerfile_update.md)|[windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md)|Update the properties of a [windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The friendly name|
|fileHash|String|SHA256 hash of the file|
|file|Binary|File as a byte array|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionAppLockerFile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionAppLockerFile",
  "displayName": "String",
  "fileHash": "String",
  "file": "binary",
  "id": "String (identifier)",
  "version": "String"
}
```



