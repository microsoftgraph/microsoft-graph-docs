# iosMobileAppIdentifier resource type> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

The identifier for an iOS app.

Inherits from [mobileAppIdentifier](../resources/intune_mam_mobileappidentifier.md)

### Properties
|Property|Type|Description|
|---|---|---|
|bundleId|String|The identifier for an app, as specified in the app store.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosMobileAppIdentifier"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosMobileAppIdentifier",
  "bundleId": "String"
}
```



