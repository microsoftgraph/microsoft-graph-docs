# organization resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The organization resource represents an instance of global settings and resources which operate and are provisioned at the tenant-level.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List organizations](../api/intune_onboarding_organization_list.md)|[organization](../resources/intune_onboarding_organization.md) collection|List properties and relationships of the [organization](../resources/intune_onboarding_organization.md) objects.|
|[Get organization](../api/intune_onboarding_organization_get.md)|[organization](../resources/intune_onboarding_organization.md)|Read properties and relationships of the [organization](../resources/intune_onboarding_organization.md) object.|
|[Update organization](../api/intune_onboarding_organization_update.md)|[organization](../resources/intune_onboarding_organization.md)|Update the properties of a [organization](../resources/intune_onboarding_organization.md) object.|
|[setMobileDeviceManagementAuthority action](../api/intune_onboarding_organization_setmobiledevicemanagementauthority.md)|Int32|Set mobile device management authority|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object.|
|mobileDeviceManagementAuthority|[mdmAuthority](../resources/intune_onboarding_mdmauthority.md)|Mobile device management authority. Possible values are: `unknown`, `intune`, `sccm`, `office365`.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "openType": true,
  "keyProperty": "id",
  "baseType": "microsoft.graph.directoryObject",
  "@odata.type": "microsoft.graph.organization"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.organization",
  "id": "String (identifier)",
  "mobileDeviceManagementAuthority": "String"
}
```

<!-- {
  "type": "#page.annotation",
  "suppressions": [
    "Warning: Resource microsoft.graph.organization is defined in multiple files: /api-reference/v1.0/resources/intune_onboarding_organization.md, /api-reference/v1.0/resources/organization.md"
  ]
}-->
