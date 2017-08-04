# windowsInformationProtectionCorporateNetworkLocation resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection Corporate Location Definition.
## Properties
|Property|Type|Description|
|---|---|---|
|name|String|Name.|
|protectedLocation|[windowsInformationProtectionProtectedLocation](../resources/intune_deviceconfig_windowsinformationprotectionprotectedlocation.md)|Protected location.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionCorporateNetworkLocation"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionCorporateNetworkLocation",
  "name": "String",
  "protectedLocation": {
    "@odata.type": "microsoft.graph.windowsInformationProtectionProtectedLocationEnterpriseCloudResources",
    "values": [
      {
        "@odata.type": "microsoft.graph.enterpriseCloudResource",
        "address": "String",
        "proxyServerUri": "String"
      }
    ]
  }
}
```



