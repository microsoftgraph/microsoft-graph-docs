#  resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

CloudPki subscription certificate profile
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List cloudPkiSubscriptions](../api/intune_deviceconfig_cloudpkisubscription_list.md)|[cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) collection|List properties and relationships of the [cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) objects.|
|[Get cloudPkiSubscription](../api/intune_deviceconfig_cloudpkisubscription_get.md)|[cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md)|Read properties and relationships of the [cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) object.|
|[Create cloudPkiSubscription](../api/intune_deviceconfig_cloudpkisubscription_create.md)|[cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md)|Create a new [cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) object.|
|[Delete cloudPkiSubscription](../api/intune_deviceconfig_cloudpkisubscription_delete.md)|None|Deletes a [cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md).|
|[Update cloudPkiSubscription](../api/intune_deviceconfig_cloudpkisubscription_update.md)|[cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md)|Update the properties of a [cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|cloudPkiProvider|String|PKCS Certificate Template Name Possible values are: `unKnown`, `symantec`.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|description|String|Admin provided description of the Device Configuration.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Admin provided name of the device configuration.|
|syncStatus|String|Last known SyncStatus of CloudPkiSubscription Possible values are: `unKnown`, `succeeded`, `failed`.|
|lastSyncError|String|Error if occurred during last sync from third party CAs|
|lastSyncDateTime|DateTimeOffset|DateTime certificate is last updated|
|credentials|[cloudPkiAdministratorCredentials](../resources/intune_deviceconfig_cloudpkiadministratorcredentials.md)|PKCS Certification Authority Name|
|trustedRootCertificate|Binary|PKCS Certificate Template Name|
|version|Int32|Version of the CloudPkiSubscription.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPkiSubscription"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.cloudPkiSubscription",
  "id": "String (identifier)",
  "cloudPkiProvider": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "syncStatus": "String",
  "lastSyncError": "String",
  "lastSyncDateTime": "String (timestamp)",
  "credentials": {
    "@odata.type": "microsoft.graph.cloudPkiAdministratorCredentials",
    "adminUserName": "String",
    "adminPassword": "String",
    "authenticationCertificate": "binary",
    "authenticationCertificatePassword": "String"
  },
  "trustedRootCertificate": "binary",
  "version": 1024
}
```



