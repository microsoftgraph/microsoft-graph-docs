# windowsInformationProtectionDataRecoveryCertificate resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection Data Recovery Certificate.
## Properties
|Property|Type|Description|
|---|---|---|
|dataRecoveryCertificate|Binary|Data recovery certificate.|
|certificateFileName|String|File name to display in UI.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionDataRecoveryCertificate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionDataRecoveryCertificate",
  "dataRecoveryCertificate": "binary",
  "certificateFileName": "String"
}
```



