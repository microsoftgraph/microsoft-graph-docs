# windowsInformationProtectionApp resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

App for Windows information protection
## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|App display name.|
|description|String|The app's description.|
|publisherName|String|The publisher name|
|productName|String|The product name.|
|denied|Boolean|If true, app is denied protection or exemption.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.windowsInformationProtectionApp"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionApp",
  "displayName": "String",
  "description": "String",
  "publisherName": "String",
  "productName": "String",
  "denied": true
}
```



