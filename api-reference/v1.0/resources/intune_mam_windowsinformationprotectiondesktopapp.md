# windowsInformationProtectionDesktopApp resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Desktop App for Windows information protection

Inherits from [windowsInformationProtectionApp](../resources/intune_mam_windowsinformationprotectionapp.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|App display name. Inherited from [windowsInformationProtectionApp](../resources/intune_mam_windowsinformationprotectionapp.md)|
|description|String|The app's description. Inherited from [windowsInformationProtectionApp](../resources/intune_mam_windowsinformationprotectionapp.md)|
|publisherName|String|The publisher name Inherited from [windowsInformationProtectionApp](../resources/intune_mam_windowsinformationprotectionapp.md)|
|productName|String|The product name. Inherited from [windowsInformationProtectionApp](../resources/intune_mam_windowsinformationprotectionapp.md)|
|denied|Boolean|If true, app is denied protection or exemption. Inherited from [windowsInformationProtectionApp](../resources/intune_mam_windowsinformationprotectionapp.md)|
|binaryName|String|The binary name.|
|binaryVersionLow|String|The lower binary version.|
|binaryVersionHigh|String|The high binary version.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.windowsInformationProtectionApp",
  "@odata.type": "microsoft.graph.windowsInformationProtectionDesktopApp"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionDesktopApp",
  "displayName": "String",
  "description": "String",
  "publisherName": "String",
  "productName": "String",
  "denied": true,
  "binaryName": "String",
  "binaryVersionLow": "String",
  "binaryVersionHigh": "String"
}
```



