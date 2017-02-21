# windowsInformationProtectionAppRuleDesktopTemplate resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection App Rule Desktop Template definition.

Inherits from [windowsInformationProtectionAppRuleTemplate](../resources/intune_deviceconfig_windowsinformationprotectionappruletemplate.md)

## Properties
|Property|Type|Description|
|---|---|---|
|publisher|String|Publisher (Empty field is consider matching all).|
|productName|String|Product name.|
|binaryName|String|Binary name.|
|version|String|Version.|
|versionCondition|String|Version condition. Possible values are: `andAbove`, `andBelow`, `equal`.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionAppRuleDesktopTemplate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionAppRuleDesktopTemplate",
  "publisher": "String",
  "productName": "String",
  "binaryName": "String",
  "version": "String",
  "versionCondition": "String"
}
```



