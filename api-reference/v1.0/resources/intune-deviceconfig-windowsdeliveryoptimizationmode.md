# windowsDeliveryOptimizationMode enum type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Delivery optimization mode for peer distribution
## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|Allow the user to set.|
|httpOnly|1|HTTP only, no peering|
|httpWithPeeringNat|2|OS default – Http blended with peering behind the same network address translator|
|httpWithPeeringPrivateGroup|3|HTTP blended with peering across a private group|
|httpWithInternetPeering|4|HTTP blended with Internet peering|
|simpleDownload|99|Simple download mode with no peering|
|bypassMode|100|Bypass mode. Do not use Delivery Optimization and use BITS instead|



