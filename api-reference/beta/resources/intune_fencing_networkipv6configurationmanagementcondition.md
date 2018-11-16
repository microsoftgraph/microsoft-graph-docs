﻿# networkIPv6ConfigurationManagementCondition resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

IPv6 configuration-based management conditions may be defined that will trigger when a device detects certain IP network settings. An IP config management condition will only be considered TRUE when the network connection is active.
IPv6 DHCP server addresses may not be matched. This is because Windows(circa Redstone) does not expose this information to the Natural Authentication service.

Inherits from [networkManagementCondition](../resources/intune_fencing_networkmanagementcondition.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List networkIPv6ConfigurationManagementConditions](../api/intune_fencing_networkipv6configurationmanagementcondition_list.md)|[networkIPv6ConfigurationManagementCondition](../resources/intune_fencing_networkipv6configurationmanagementcondition.md) collection|List properties and relationships of the [networkIPv6ConfigurationManagementCondition](../resources/intune_fencing_networkipv6configurationmanagementcondition.md) objects.|
|[Get networkIPv6ConfigurationManagementCondition](../api/intune_fencing_networkipv6configurationmanagementcondition_get.md)|[networkIPv6ConfigurationManagementCondition](../resources/intune_fencing_networkipv6configurationmanagementcondition.md)|Read properties and relationships of the [networkIPv6ConfigurationManagementCondition](../resources/intune_fencing_networkipv6configurationmanagementcondition.md) object.|
|[Create networkIPv6ConfigurationManagementCondition](../api/intune_fencing_networkipv6configurationmanagementcondition_create.md)|[networkIPv6ConfigurationManagementCondition](../resources/intune_fencing_networkipv6configurationmanagementcondition.md)|Create a new [networkIPv6ConfigurationManagementCondition](../resources/intune_fencing_networkipv6configurationmanagementcondition.md) object.|
|[Delete networkIPv6ConfigurationManagementCondition](../api/intune_fencing_networkipv6configurationmanagementcondition_delete.md)|None|Deletes a [networkIPv6ConfigurationManagementCondition](../resources/intune_fencing_networkipv6configurationmanagementcondition.md).|
|[Update networkIPv6ConfigurationManagementCondition](../api/intune_fencing_networkipv6configurationmanagementcondition_update.md)|[networkIPv6ConfigurationManagementCondition](../resources/intune_fencing_networkipv6configurationmanagementcondition.md)|Update the properties of a [networkIPv6ConfigurationManagementCondition](../resources/intune_fencing_networkipv6configurationmanagementcondition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the management condition. System generated value assigned when created. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|uniqueName|String|Unique name for the management condition. Used in management condition expressions. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|displayName|String|The admin defined name of the management condition. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|description|String|The admin defined description of the management condition. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|createdDateTime|DateTimeOffset|The time the management condition was created. Generated service side. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|modifiedDateTime|DateTimeOffset|The time the management condition was last modified. Updated service side. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|eTag|String|ETag of the management condition. Updated service side. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|applicablePlatforms|[devicePlatformType](../resources/intune_shared_deviceplatformtype.md) collection|The applicable platforms for this management condition. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|ipV6Prefix|String|The IPv6 subnet to be connected to. e.g. 2001:db8::/32|
|ipV6Gateway|String|The IPv6 gateway address to. e.g 2001:db8::1|
|ipV6DNSServerList|String collection|An IPv6 DNS servers configured for the adapter.|
|dnsSuffixList|String collection|Valid DNS suffixes for the current network. e.g. seattle.contoso.com|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managementConditionStatements|[managementConditionStatement](../resources/intune_fencing_managementconditionstatement.md) collection|The management condition statements associated to the management condition. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkIPv6ConfigurationManagementCondition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkIPv6ConfigurationManagementCondition",
  "id": "String (identifier)",
  "uniqueName": "String",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "eTag": "String",
  "applicablePlatforms": [
    "String"
  ],
  "ipV6Prefix": "String",
  "ipV6Gateway": "String",
  "ipV6DNSServerList": [
    "String"
  ],
  "dnsSuffixList": [
    "String"
  ]
}
```





