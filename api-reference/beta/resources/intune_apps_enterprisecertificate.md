# enterpriseCertificate resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List enterpriseCertificates](../api/intune_apps_enterprisecertificate_list.md)|[enterpriseCertificate](../resources/intune_apps_enterprisecertificate.md) collection|List properties and relationships of the [enterpriseCertificate](../resources/intune_apps_enterprisecertificate.md) objects.|
|[Get enterpriseCertificate](../api/intune_apps_enterprisecertificate_get.md)|[enterpriseCertificate](../resources/intune_apps_enterprisecertificate.md)|Read properties and relationships of the [enterpriseCertificate](../resources/intune_apps_enterprisecertificate.md) object.|
|[Create enterpriseCertificate](../api/intune_apps_enterprisecertificate_create.md)|[enterpriseCertificate](../resources/intune_apps_enterprisecertificate.md)|Create a new [enterpriseCertificate](../resources/intune_apps_enterprisecertificate.md) object.|
|[Delete enterpriseCertificate](../api/intune_apps_enterprisecertificate_delete.md)|None|Deletes a [enterpriseCertificate](../resources/intune_apps_enterprisecertificate.md).|
|[Update enterpriseCertificate](../api/intune_apps_enterprisecertificate_update.md)|[enterpriseCertificate](../resources/intune_apps_enterprisecertificate.md)|Update the properties of a [enterpriseCertificate](../resources/intune_apps_enterprisecertificate.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|The key of the entity.|
|certData|Binary|The Windows Enterprise Code-Signing Certificate in the raw data format.|
|issuedTo|String|The IssuedTo value for the cert.|
|issuedBy|String|The IssuedBy value for the cert.|
|certExpirationDate|DateTimeOffset|The Cert Expiration Date.|
|certStatus|Int32|The Cert Status Provisioned or not Provisioned.|
|certType|Int32|The Type of the CodeSigning Cert as Enterprise Cert.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.enterpriseCertificate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.enterpriseCertificate",
  "id": "String (identifier)",
  "certData": "binary",
  "issuedTo": "String",
  "issuedBy": "String",
  "certExpirationDate": "String (timestamp)",
  "certStatus": 1024,
  "certType": 1024
}
```



