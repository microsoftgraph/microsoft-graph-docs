﻿# deviceManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune_companyterms_devicemanagement_get.md)|[deviceManagement](../resources/intune_companyterms_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_companyterms_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_companyterms_devicemanagement_update.md)|[deviceManagement](../resources/intune_companyterms_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_companyterms_devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|termsAndConditions|[termsAndConditions](../resources/intune_companyterms_termsandconditions.md) collection|The terms and conditions associated with device management of the company.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```



