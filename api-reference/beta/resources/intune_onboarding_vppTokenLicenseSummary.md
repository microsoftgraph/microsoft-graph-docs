﻿# vppTokenLicenseSummary resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

License summary of a given app in a token.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[getLicensesForApp function](../api/intune_onboarding_vpptoken_getlicensesforapp.md)|[vppTokenLicenseSummary](../resources/intune_onboarding_vpptokenlicensesummary.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|vppTokenId|String|Identifier of the VPP token.|
|appleId|String|The Apple Id associated with the given Apple Volume Purchase Program Token.|
|organizationName|String|The organization associated with the Apple Volume Purchase Program Token.|
|availableLicenseCount|String|The number of VPP licenses available.|
|usedLicenseCount|Boolean|The number of VPP licenses in use.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "vppTokenId",
  "@odata.type": "microsoft.graph.vppToken"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.vppTokenLicenseSummary",
  "vppTokenId": "String (identifier)",
  "appleId": "String",
  "organizationName": "String",
  "availableLicenseCount": 1024,
  "usedLicenseCount": 1024
}
```






