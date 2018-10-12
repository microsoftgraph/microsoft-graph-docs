# enterpriseCodeSigningCertificate resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List enterpriseCodeSigningCertificates](../api/intune_apps_enterprisecodesigningcertificate_list.md)|[enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md) collection|List properties and relationships of the [enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md) objects.|
|[Get enterpriseCodeSigningCertificate](../api/intune_apps_enterprisecodesigningcertificate_get.md)|[enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md)|Read properties and relationships of the [enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md) object.|
|[Create enterpriseCodeSigningCertificate](../api/intune_apps_enterprisecodesigningcertificate_create.md)|[enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md)|Create a new [enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md) object.|
|[Delete enterpriseCodeSigningCertificate](../api/intune_apps_enterprisecodesigningcertificate_delete.md)|None|Deletes a [enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md).|
|[Update enterpriseCodeSigningCertificate](../api/intune_apps_enterprisecodesigningcertificate_update.md)|[enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md)|Update the properties of a [enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the entity.|
|content|Binary|The Windows Enterprise Code-Signing Certificate in the raw data format.|
|status|[certificateStatus](../resources/intune_apps_certificatestatus.md)|The Certificate Status Provisioned or not Provisioned. Possible values are: `notProvisioned`, `provisioned`.|
|subjectName|String|The Subject Name for the cert.|
|subject|String|The Subject Value for the cert.|
|issuerName|String|The Issuer Name for the cert.|
|issuer|String|The Issuer value for the cert.|
|expirationDateTime|DateTimeOffset|The Cert Expiration Date.|
|uploadDateTime|DateTimeOffset|The date time of CodeSigning Cert when it is uploaded.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.enterpriseCodeSigningCertificate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enterpriseCodeSigningCertificate",
  "id": "String (identifier)",
  "content": "binary",
  "status": "String",
  "subjectName": "String",
  "subject": "String",
  "issuerName": "String",
  "issuer": "String",
  "expirationDateTime": "String (timestamp)",
  "uploadDateTime": "String (timestamp)"
}
```



