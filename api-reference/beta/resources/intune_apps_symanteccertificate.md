# symantecCertificate resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get symantecCertificate](../api/intune_apps_symanteccertificate_get.md)|[symantecCertificate](../resources/intune_apps_symanteccertificate.md)|Read properties and relationships of the [symantecCertificate](../resources/intune_apps_symanteccertificate.md) object.|
|[Update symantecCertificate](../api/intune_apps_symanteccertificate_update.md)|[symantecCertificate](../resources/intune_apps_symanteccertificate.md)|Update the properties of a [symantecCertificate](../resources/intune_apps_symanteccertificate.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|The key of the entity.|
|certData|Binary|The Windows Symantec Code-Signing Certificate in the raw data format.|
|password|String|The Password required for .pfx file.|
|issuedTo|String|The IssuedTo value for the cert.|
|issuedBy|String|The IssuedBy value for the cert.|
|certExpirationDate|DateTimeOffset|The Cert Expiration Date.|
|certStatus|Int32|The Cert Status Provisioned or not Provisioned.|
|certType|Int32|The Type of the CodeSigning Cert as Symantec Cert.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.symantecCertificate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.symantecCertificate",
  "id": "String (identifier)",
  "certData": "binary",
  "password": "String",
  "issuedTo": "String",
  "issuedBy": "String",
  "certExpirationDate": "String (timestamp)",
  "certStatus": 1024,
  "certType": 1024
}
```



