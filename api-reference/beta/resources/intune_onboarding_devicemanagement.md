# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_onboarding_devicemanagement_get.md)|[deviceManagement](../resources/intune_onboarding_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_onboarding_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_onboarding_devicemanagement_update.md)|[deviceManagement](../resources/intune_onboarding_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_onboarding_devicemanagement.md) object.|
|[verifyWindowsEnrollmentAutoDiscovery function](../api/intune_onboarding_devicemanagement_verifywindowsenrollmentautodiscovery.md)|Boolean|Not yet documented|
|[List deviceCategories](../api/intune_onboarding_devicemanagement_list_devicecategory.md)|[deviceCategory](../resources/intune_onboarding_devicecategory.md) collection|Get the deviceCategories from the deviceCategories navigation property.|
|[Create deviceCategory](../api/intune_onboarding_devicemanagement_create_devicecategory.md)|[deviceCategory](../resources/intune_onboarding_devicecategory.md)|Create a new [deviceCategory](../resources/intune_onboarding_devicecategory.md) by posting to the deviceCategories collection.|
|[List deviceManagementExchangeConnectors](../api/intune_onboarding_devicemanagement_list_devicemanagementexchangeconnector.md)|[deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md) collection|Get the deviceManagementExchangeConnectors from the exchangeConnectors navigation property.|
|[Create deviceManagementExchangeConnector](../api/intune_onboarding_devicemanagement_create_devicemanagementexchangeconnector.md)|[deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md)|Create a new [deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md) by posting to the exchangeConnectors collection.|
|[Get deviceManagementExchangeOnPremisesPolicy](../api/intune_onboarding_devicemanagement_get_devicemanagementexchangeonpremisespolicy.md)|[deviceManagementExchangeOnPremisesPolicy](../resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md)|Get the [deviceManagementExchangeOnPremisesPolicy](../resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md) from the exchangeOnPremisesPolicy navigation property.|
|[List mobileThreatDefenseConnectors](../api/intune_onboarding_devicemanagement_list_mobilethreatdefenseconnector.md)|[mobileThreatDefenseConnector](../resources/intune_onboarding_mobilethreatdefenseconnector.md) collection|Get the mobileThreatDefenseConnectors from the mobileThreatDefenseConnectors navigation property.|
|[Create mobileThreatDefenseConnector](../api/intune_onboarding_devicemanagement_create_mobilethreatdefenseconnector.md)|[mobileThreatDefenseConnector](../resources/intune_onboarding_mobilethreatdefenseconnector.md)|Create a new [mobileThreatDefenseConnector](../resources/intune_onboarding_mobilethreatdefenseconnector.md) by posting to the mobileThreatDefenseConnectors collection.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceCategories|[deviceCategory](../resources/intune_onboarding_devicecategory.md) collection|The list of device categories with the tenant.|
|exchangeConnectors|[deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md) collection|The list of Exchange Connectors configured by the tenant.|
|exchangeOnPremisesPolicy|[deviceManagementExchangeOnPremisesPolicy](../resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md)|The policy which controls mobile device access to Exchange On Premises|
|mobileThreatDefenseConnectors|[mobileThreatDefenseConnector](../resources/intune_onboarding_mobilethreatdefenseconnector.md) collection|The list of Mobile threat Defense connectors configured by the tenant.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```



