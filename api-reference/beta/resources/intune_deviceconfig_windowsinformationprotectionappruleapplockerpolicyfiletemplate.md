# windowsInformationProtectionAppRuleAppLockerPolicyFileTemplate resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection App Rule AppLocker Policy File Template definition.

Inherits from [windowsInformationProtectionAppRuleTemplate](../resources/intune_deviceconfig_windowsinformationprotectionappruletemplate.md)

## Properties
|Property|Type|Description|
|---|---|---|
|payloadFileName|String|Payload file name. (.xml)|
|payload|Binary|Payload. (UTF8 encoded byte array)|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionAppRuleAppLockerPolicyFileTemplate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionAppRuleAppLockerPolicyFileTemplate",
  "payloadFileName": "String",
  "payload": "binary"
}
```



