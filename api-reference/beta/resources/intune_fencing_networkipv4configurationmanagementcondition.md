﻿# networkIPv4ConfigurationManagementCondition resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

IPv4 configuration-based management conditions may be defined that will trigger when a device detects certain IP network settings. An IP config management conditions will only be considered TRUE when the network connection is active.

Inherits from [networkManagementCondition](../resources/intune_fencing_networkmanagementcondition.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List networkIPv4ConfigurationManagementConditions](../api/intune_fencing_networkipv4configurationmanagementcondition_list.md)|[networkIPv4ConfigurationManagementCondition](../resources/intune_fencing_networkipv4configurationmanagementcondition.md) collection|List properties and relationships of the [networkIPv4ConfigurationManagementCondition](../resources/intune_fencing_networkipv4configurationmanagementcondition.md) objects.|
|[Get networkIPv4ConfigurationManagementCondition](../api/intune_fencing_networkipv4configurationmanagementcondition_get.md)|[networkIPv4ConfigurationManagementCondition](../resources/intune_fencing_networkipv4configurationmanagementcondition.md)|Read properties and relationships of the [networkIPv4ConfigurationManagementCondition](../resources/intune_fencing_networkipv4configurationmanagementcondition.md) object.|
|[Create networkIPv4ConfigurationManagementCondition](../api/intune_fencing_networkipv4configurationmanagementcondition_create.md)|[networkIPv4ConfigurationManagementCondition](../resources/intune_fencing_networkipv4configurationmanagementcondition.md)|Create a new [networkIPv4ConfigurationManagementCondition](../resources/intune_fencing_networkipv4configurationmanagementcondition.md) object.|
|[Delete networkIPv4ConfigurationManagementCondition](../api/intune_fencing_networkipv4configurationmanagementcondition_delete.md)|None|Deletes a [networkIPv4ConfigurationManagementCondition](../resources/intune_fencing_networkipv4configurationmanagementcondition.md).|
|[Update networkIPv4ConfigurationManagementCondition](../api/intune_fencing_networkipv4configurationmanagementcondition_update.md)|[networkIPv4ConfigurationManagementCondition](../resources/intune_fencing_networkipv4configurationmanagementcondition.md)|Update the properties of a [networkIPv4ConfigurationManagementCondition](../resources/intune_fencing_networkipv4configurationmanagementcondition.md) object.|

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
|ipV4Prefix|String|The IPv4 subnet to be connected to. e.g. 10.0.0.0/8|
|ipV4Gateway|String|The IPv4 gateway address. e.g. 10.0.0.0|
|ipV4DHCPServer|String|The IPv4 address of the DHCP server for the adapter.|
|ipV4DNSServerList|String collection|The IPv4 DNS servers configured for the adapter.|
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
  "@odata.type": "microsoft.graph.networkIPv4ConfigurationManagementCondition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkIPv4ConfigurationManagementCondition",
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
  "ipV4Prefix": "String",
  "ipV4Gateway": "String",
  "ipV4DHCPServer": "String",
  "ipV4DNSServerList": [
    "String"
  ],
  "dnsSuffixList": [
    "String"
  ]
}
```





