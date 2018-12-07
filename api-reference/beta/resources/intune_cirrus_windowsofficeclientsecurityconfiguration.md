# windowsOfficeClientSecurityConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented

Inherits from [officeClientConfiguration](../resources/intune_cirrus_officeclientconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsOfficeClientSecurityConfigurations](../api/intune_cirrus_windowsofficeclientsecurityconfiguration_list.md)|[windowsOfficeClientSecurityConfiguration](../resources/intune_cirrus_windowsofficeclientsecurityconfiguration.md) collection|List properties and relationships of the [windowsOfficeClientSecurityConfiguration](../resources/intune_cirrus_windowsofficeclientsecurityconfiguration.md) objects.|
|[Get windowsOfficeClientSecurityConfiguration](../api/intune_cirrus_windowsofficeclientsecurityconfiguration_get.md)|[windowsOfficeClientSecurityConfiguration](../resources/intune_cirrus_windowsofficeclientsecurityconfiguration.md)|Read properties and relationships of the [windowsOfficeClientSecurityConfiguration](../resources/intune_cirrus_windowsofficeclientsecurityconfiguration.md) object.|
|[Create windowsOfficeClientSecurityConfiguration](../api/intune_cirrus_windowsofficeclientsecurityconfiguration_create.md)|[windowsOfficeClientSecurityConfiguration](../resources/intune_cirrus_windowsofficeclientsecurityconfiguration.md)|Create a new [windowsOfficeClientSecurityConfiguration](../resources/intune_cirrus_windowsofficeclientsecurityconfiguration.md) object.|
|[Delete windowsOfficeClientSecurityConfiguration](../api/intune_cirrus_windowsofficeclientsecurityconfiguration_delete.md)|None|Deletes a [windowsOfficeClientSecurityConfiguration](../resources/intune_cirrus_windowsofficeclientsecurityconfiguration.md).|
|[Update windowsOfficeClientSecurityConfiguration](../api/intune_cirrus_windowsofficeclientsecurityconfiguration_update.md)|[windowsOfficeClientSecurityConfiguration](../resources/intune_cirrus_windowsofficeclientsecurityconfiguration.md)|Update the properties of a [windowsOfficeClientSecurityConfiguration](../resources/intune_cirrus_windowsofficeclientsecurityconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id of the office client configuration policy. Inherited from [officeClientConfiguration](../resources/intune_cirrus_officeclientconfiguration.md)|
|userPreferencePayload|Stream|Preference settings JSON string in binary format, these values can be overridden by the user. Inherited from [officeClientConfiguration](../resources/intune_cirrus_officeclientconfiguration.md)|
|policyPayload|Stream|Policy settings JSON string in binary format, these values cannot be changed by the user. Inherited from [officeClientConfiguration](../resources/intune_cirrus_officeclientconfiguration.md)|
|description|String|Admin provided description of the office client configuration policy. Inherited from [officeClientConfiguration](../resources/intune_cirrus_officeclientconfiguration.md)|
|displayName|String|Admin provided name of the office client configuration policy. Inherited from [officeClientConfiguration](../resources/intune_cirrus_officeclientconfiguration.md)|
|priority|Int32|Priority value should be unique value for each policy under a tenant and will be used for conflict resolution, lower values mean priority is high. Inherited from [officeClientConfiguration](../resources/intune_cirrus_officeclientconfiguration.md)|
|lastModifiedDateTime|DateTime|Last modified datetime stamp of the policy. Inherited from [officeClientConfiguration](../resources/intune_cirrus_officeclientconfiguration.md)|
|userCheckinSummary|[officeUserCheckinSummary](../resources/intune_cirrus_officeusercheckinsummary.md)|User check-in summary for the policy. Inherited from [officeClientConfiguration](../resources/intune_cirrus_officeclientconfiguration.md)|
|checkinStatuses|[officeClientCheckinStatus](../resources/intune_cirrus_officeclientcheckinstatus.md) collection|List of office Client check-in status. Inherited from [officeClientConfiguration](../resources/intune_cirrus_officeclientconfiguration.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[officeClientConfigurationAssignment](../resources/intune_cirrus_officeclientconfigurationassignment.md) collection|The list of group assignments for the policy. Inherited from [officeClientConfiguration](../resources/intune_cirrus_officeclientconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsOfficeClientSecurityConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsOfficeClientSecurityConfiguration",
  "id": "String (identifier)",
  "userPreferencePayload": "<Unknown Primitive Type Edm.Stream>",
  "policyPayload": "<Unknown Primitive Type Edm.Stream>",
  "description": "String",
  "displayName": "String",
  "priority": 1024,
  "userCheckinSummary": {
    "@odata.type": "microsoft.graph.officeUserCheckinSummary",
    "succeededUserCount": 1024,
    "failedUserCount": 1024
  },
  "checkinStatuses": [
    {
      "@odata.type": "microsoft.graph.officeClientCheckinStatus",
      "userPrincipalName": "String",
      "deviceName": "String",
      "devicePlatform": "String",
      "devicePlatformVersion": "String",
      "wasSuccessful": true,
      "userId": "String",
      "checkinDateTime": "String (timestamp)",
      "errorMessage": "String",
      "appliedPolicies": [
        "String"
      ]
    }
  ]
}
```



