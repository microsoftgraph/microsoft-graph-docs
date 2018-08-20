# configurationManagerClientEnabledFeatures resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

configuration Manager client enabled features
## Properties
|Property|Type|Description|
|:---|:---|:---|
|inventory|Boolean|Whether inventory is managed by Intune|
|modernApps|Boolean|Whether modern application is managed by Intune|
|resourceAccess|Boolean|Whether resource access is managed by Intune|
|deviceConfiguration|Boolean|Whether device configuration is managed by Intune|
|compliancePolicy|Boolean|Whether compliance policy is managed by Intune|
|windowsUpdateForBusiness|Boolean|Whether Windows Update for Business is managed by Intune|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.configurationManagerClientEnabledFeatures"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationManagerClientEnabledFeatures",
  "inventory": true,
  "modernApps": true,
  "resourceAccess": true,
  "deviceConfiguration": true,
  "compliancePolicy": true,
  "windowsUpdateForBusiness": true
}
```



