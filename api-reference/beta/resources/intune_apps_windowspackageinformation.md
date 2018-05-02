# windowsPackageInformation resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for the package information for a Windows line of business app.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicableArchitecture|[windowsArchitecture](../resources/intune_apps_windowsarchitecture.md)|The Windows architecture for which this app can run on. Possible values are: `none`, `x86`, `x64`, `arm`, `neutral`.|
|displayName|String|The Display Name.|
|identityName|String|The Identity Name.|
|identityPublisher|String|The Identity Publisher.|
|identityResourceIdentifier|String|The Identity Resource Identifier.|
|identityVersion|String|The Identity Version.|
|minimumSupportedOperatingSystem|[windowsMinimumOperatingSystem](../resources/intune_apps_windowsminimumoperatingsystem.md)|The value for the minimum applicable operating system.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsPackageInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsPackageInformation",
  "applicableArchitecture": "String",
  "displayName": "String",
  "identityName": "String",
  "identityPublisher": "String",
  "identityResourceIdentifier": "String",
  "identityVersion": "String",
  "minimumSupportedOperatingSystem": {
    "@odata.type": "microsoft.graph.windowsMinimumOperatingSystem",
    "v8_0": true,
    "v8_1": true,
    "v10_0": true
  }
}
```



