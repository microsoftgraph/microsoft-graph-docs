# deviceManagementExchangeOnPremisesPolicy resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity which represents the Exchange OnPremises policy configured for a tenant.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagementExchangeOnPremisesPolicy](../api/intune_onboarding_devicemanagementexchangeonpremisespolicy_get.md)|[deviceManagementExchangeOnPremisesPolicy](../resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md)|Read properties and relationships of the [deviceManagementExchangeOnPremisesPolicy](../resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md) object.|
|[Update deviceManagementExchangeOnPremisesPolicy](../api/intune_onboarding_devicemanagementexchangeonpremisespolicy_update.md)|[deviceManagementExchangeOnPremisesPolicy](../resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md)|Update the properties of a [deviceManagementExchangeOnPremisesPolicy](../resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|
|notificationContent|Binary|Notification text that will be sent to users quarantined by this policy. This is UTF8 encoded byte array HTML.|
|defaultAccessLevel|[deviceManagementExchangeAccessLevel](../resources/intune_onboarding_devicemanagementexchangeaccesslevel.md)|Default access state in Exchange. This rule applies globally to the entire Exchange organization. Possible values are: `none`, `allow`, `block`, `quarantine`.|
|accessRules|[deviceManagementExchangeAccessRule](../resources/intune_onboarding_devicemanagementexchangeaccessrule.md) collection|The list of device access rules in Exchange. The access rules apply globally to the entire Exchange organization|
|knownDeviceClasses|[deviceManagementExchangeDeviceClass](../resources/intune_onboarding_devicemanagementexchangedeviceclass.md) collection|The list of device classes known to Exchange|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|conditionalAccessSettings|[onPremisesConditionalAccessSettings](../resources/intune_onboarding_onpremisesconditionalaccesssettings.md)|The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementExchangeOnPremisesPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementExchangeOnPremisesPolicy",
  "id": "String (identifier)",
  "notificationContent": "binary",
  "defaultAccessLevel": "String",
  "accessRules": [
    {
      "@odata.type": "microsoft.graph.deviceManagementExchangeAccessRule",
      "deviceClass": {
        "@odata.type": "microsoft.graph.deviceManagementExchangeDeviceClass",
        "name": "String",
        "type": "String"
      },
      "accessLevel": "String"
    }
  ],
  "knownDeviceClasses": [
    {
      "@odata.type": "microsoft.graph.deviceManagementExchangeDeviceClass",
      "name": "String",
      "type": "String"
    }
  ]
}
```



