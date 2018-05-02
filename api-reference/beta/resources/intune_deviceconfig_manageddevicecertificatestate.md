# managedDeviceCertificateState resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedDeviceCertificateStates](../api/intune_deviceconfig_manageddevicecertificatestate_list.md)|[managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) collection|List properties and relationships of the [managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) objects.|
|[Get managedDeviceCertificateState](../api/intune_deviceconfig_manageddevicecertificatestate_get.md)|[managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md)|Read properties and relationships of the [managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) object.|
|[Create managedDeviceCertificateState](../api/intune_deviceconfig_manageddevicecertificatestate_create.md)|[managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md)|Create a new [managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) object.|
|[Delete managedDeviceCertificateState](../api/intune_deviceconfig_manageddevicecertificatestate_delete.md)|None|Deletes a [managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md).|
|[Update managedDeviceCertificateState](../api/intune_deviceconfig_manageddevicecertificatestate_update.md)|[managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md)|Update the properties of a [managedDeviceCertificateState](../resources/intune_deviceconfig_manageddevicecertificatestate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|devicePlatform|[devicePlatformType](../resources/intune_deviceconfig_deviceplatformtype.md)|Device platform. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`.|
|certificateKeyUsage|[keyUsages](../resources/intune_deviceconfig_keyusages.md)|Key usage. Possible values are: `keyEncipherment`, `digitalSignature`.|
|certificateProfileDisplayName|String|Certificate profile display name|
|deviceDisplayName|String|Device display name|
|userDisplayName|String|User display name|
|serverUrl|String|Server URL|
|certificateExpirationDateTime|DateTimeOffset|Certificate expiry date|
|lastCertificateStateChangeDateTime|DateTimeOffset|Last certificate issuance state change|
|certificateIssuer|String|Issuer|
|certificateThumbprint|String|Thumbprint|
|certificateSerialNumber|String|Serial number|
|certificateKeyLength|Int32|Key length|
|enhancedKeyUsage|String|Extended key usage|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceCertificateState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceCertificateState",
  "id": "String (identifier)",
  "devicePlatform": "String",
  "certificateKeyUsage": "String",
  "certificateProfileDisplayName": "String",
  "deviceDisplayName": "String",
  "userDisplayName": "String",
  "serverUrl": "String",
  "certificateExpirationDateTime": "String (timestamp)",
  "lastCertificateStateChangeDateTime": "String (timestamp)",
  "certificateIssuer": "String",
  "certificateThumbprint": "String",
  "certificateSerialNumber": "String",
  "certificateKeyLength": 1024,
  "enhancedKeyUsage": "String"
}
```



