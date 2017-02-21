# windowsInformationProtectionProtectedLocationEnterpriseNetworkDomainNames resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection Protected Location Enterprise Network Domain Names definition.

Inherits from [windowsInformationProtectionProtectedLocation](../resources/intune_deviceconfig_windowsinformationprotectionprotectedlocation.md)

## Properties
|Property|Type|Description|
|---|---|---|
|ipAddressesOrFqdns|String collection|IPAddresses or FQDNs.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionProtectedLocationEnterpriseNetworkDomainNames"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionProtectedLocationEnterpriseNetworkDomainNames",
  "ipAddressesOrFqdns": [
    "String"
  ]
}
```



