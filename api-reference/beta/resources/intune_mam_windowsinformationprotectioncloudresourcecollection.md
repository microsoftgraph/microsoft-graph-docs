# windowsInformationProtectionCloudResourceCollection resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection Cloud Resource Collection
## Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Display name|
|resources|[windowsInformationProtectionCloudResource](../resources/intune_mam_windowsinformationprotectioncloudresource.md) collection|Collection of cloud resources|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionCloudResourceCollection"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionCloudResourceCollection",
  "displayName": "String",
  "resources": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionCloudResource",
      "ipAddressOrFQDN": "String",
      "proxy": "String"
    }
  ]
}
```



