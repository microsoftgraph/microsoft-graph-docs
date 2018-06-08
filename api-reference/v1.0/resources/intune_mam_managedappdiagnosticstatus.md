# managedAppDiagnosticStatus resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents diagnostics status.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|validationName|String|The validation friendly name|
|state|String|The state of the operation|
|mitigationInstruction|String|Instruction on how to mitigate a failed validation|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedAppDiagnosticStatus"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAppDiagnosticStatus",
  "validationName": "String",
  "state": "String",
  "mitigationInstruction": "String"
}
```



