# windowsInformationProtectionAppRuleStoreAppTemplate resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection App Rule Store App Template definition.

Inherits from [windowsInformationProtectionAppRuleTemplate](../resources/intune_deviceconfig_windowsinformationprotectionappruletemplate.md)

## Properties
|Property|Type|Description|
|---|---|---|
|publisher|String|Publisher.|
|productName|String|Product name.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionAppRuleStoreAppTemplate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionAppRuleStoreAppTemplate",
  "publisher": "String",
  "productName": "String"
}
```



