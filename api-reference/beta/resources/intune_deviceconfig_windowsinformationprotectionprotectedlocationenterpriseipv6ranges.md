# windowsInformationProtectionProtectedLocationEnterpriseIPv6Ranges resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection Protected Location Enterprise IPv6 Ranges definition.

Inherits from [windowsInformationProtectionProtectedLocation](../resources/intune_deviceconfig_windowsinformationprotectionprotectedlocation.md)

## Properties
|Property|Type|Description|
|---|---|---|
|ranges|[iPv6Range](../resources/intune_deviceconfig_ipv6range.md) collection|Ranges.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionProtectedLocationEnterpriseIPv6Ranges"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionProtectedLocationEnterpriseIPv6Ranges",
  "ranges": [
    {
      "@odata.type": "microsoft.graph.iPv6Range",
      "lowerAddress": "String",
      "upperAddress": "String"
    }
  ]
}
```



