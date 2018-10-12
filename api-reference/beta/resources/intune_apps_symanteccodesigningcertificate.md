# symantecCodeSigningCertificate resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get symantecCodeSigningCertificate](../api/intune_apps_symanteccodesigningcertificate_get.md)|[symantecCodeSigningCertificate](../resources/intune_apps_symanteccodesigningcertificate.md)|Read properties and relationships of the [symantecCodeSigningCertificate](../resources/intune_apps_symanteccodesigningcertificate.md) object.|
|[Update symantecCodeSigningCertificate](../api/intune_apps_symanteccodesigningcertificate_update.md)|[symantecCodeSigningCertificate](../resources/intune_apps_symanteccodesigningcertificate.md)|Update the properties of a [symantecCodeSigningCertificate](../resources/intune_apps_symanteccodesigningcertificate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the entity.|
|content|Binary|The Windows Symantec Code-Signing Certificate in the raw data format.|
|status|[certificateStatus](../resources/intune_apps_certificatestatus.md)|The Cert Status Provisioned or not Provisioned. Possible values are: `notProvisioned`, `provisioned`.|
|password|String|The Password required for .pfx file.|
|subjectName|String|The Subject Name for the cert.|
|subject|String|The Subject value for the cert.|
|issuerName|String|The Issuer Name for the cert.|
|issuer|String|The Issuer value for the cert.|
|expirationDateTime|DateTimeOffset|The Cert Expiration Date.|
|uploadDateTime|DateTimeOffset|The Type of the CodeSigning Cert as Symantec Cert.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.symantecCodeSigningCertificate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.symantecCodeSigningCertificate",
  "id": "String (identifier)",
  "content": "binary",
  "status": "String",
  "password": "String",
  "subjectName": "String",
  "subject": "String",
  "issuerName": "String",
  "issuer": "String",
  "expirationDateTime": "String (timestamp)",
  "uploadDateTime": "String (timestamp)"
}
```



