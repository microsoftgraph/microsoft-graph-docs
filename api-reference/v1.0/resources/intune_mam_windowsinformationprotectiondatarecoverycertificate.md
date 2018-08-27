# windowsInformationProtectionDataRecoveryCertificate resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection DataRecoveryCertificate
## Properties
|Property|Type|Description|
|:---|:---|:---|
|subjectName|String|Data recovery Certificate subject name|
|description|String|Data recovery Certificate description|
|expirationDateTime|DateTimeOffset|Data recovery Certificate expiration datetime|
|certificate|Binary|Data recovery Certificate|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsInformationProtectionDataRecoveryCertificate"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionDataRecoveryCertificate",
  "subjectName": "String",
  "description": "String",
  "expirationDateTime": "String (timestamp)",
  "certificate": "binary"
}
```



