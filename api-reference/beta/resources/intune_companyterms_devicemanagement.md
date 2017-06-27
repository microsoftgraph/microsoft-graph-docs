# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_companyterms_devicemanagement_get.md)|[deviceManagement](../resources/intune_companyterms_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_companyterms_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_companyterms_devicemanagement_update.md)|[deviceManagement](../resources/intune_companyterms_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_companyterms_devicemanagement.md) object.|
|[List termsAndConditionses](../api/intune_companyterms_termsandconditions_list.md)|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md) collection|List properties and relationships of the [termsAndConditions](../resources/intune_companyterms_termsandconditions.md) objects.|
|[Create termsAndConditions](../api/intune_companyterms_termsandconditions_create.md)|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md)|Create a new [termsAndConditions](../resources/intune_companyterms_termsandconditions.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|termsAndConditions|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md) collection|The terms and conditions associated with device management of the company.|

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



