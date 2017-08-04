# windowsInformationProtectionAppRule resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection App Rule definition.
## Properties
|Property|Type|Description|
|---|---|---|
|title|String|Title.|
|mode|String|Mode. Possible values are: `allow`, `exempt`.|
|template|[windowsInformationProtectionAppRuleTemplate](../resources/intune_deviceconfig_windowsinformationprotectionappruletemplate.md)|Template (Desktop, AppStore or AppLockerPolicyFile).|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionAppRule"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionAppRule",
  "title": "String",
  "mode": "String",
  "template": {
    "@odata.type": "microsoft.graph.windowsInformationProtectionAppRuleStoreAppTemplate",
    "publisher": "String",
    "productName": "String"
  }
}
```



