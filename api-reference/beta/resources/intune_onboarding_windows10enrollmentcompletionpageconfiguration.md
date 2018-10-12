# windows10EnrollmentCompletionPageConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented

Inherits from [deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windows10EnrollmentCompletionPageConfigurations](../api/intune_onboarding_windows10enrollmentcompletionpageconfiguration_list.md)|[windows10EnrollmentCompletionPageConfiguration](../resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md) collection|List properties and relationships of the [windows10EnrollmentCompletionPageConfiguration](../resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md) objects.|
|[Get windows10EnrollmentCompletionPageConfiguration](../api/intune_onboarding_windows10enrollmentcompletionpageconfiguration_get.md)|[windows10EnrollmentCompletionPageConfiguration](../resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md)|Read properties and relationships of the [windows10EnrollmentCompletionPageConfiguration](../resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md) object.|
|[Create windows10EnrollmentCompletionPageConfiguration](../api/intune_onboarding_windows10enrollmentcompletionpageconfiguration_create.md)|[windows10EnrollmentCompletionPageConfiguration](../resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md)|Create a new [windows10EnrollmentCompletionPageConfiguration](../resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md) object.|
|[Delete windows10EnrollmentCompletionPageConfiguration](../api/intune_onboarding_windows10enrollmentcompletionpageconfiguration_delete.md)|None|Deletes a [windows10EnrollmentCompletionPageConfiguration](../resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md).|
|[Update windows10EnrollmentCompletionPageConfiguration](../api/intune_onboarding_windows10enrollmentcompletionpageconfiguration_update.md)|[windows10EnrollmentCompletionPageConfiguration](../resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md)|Update the properties of a [windows10EnrollmentCompletionPageConfiguration](../resources/intune_onboarding_windows10enrollmentcompletionpageconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented Inherited from [deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md)|
|displayName|String|Not yet documented Inherited from [deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md)|
|description|String|Not yet documented Inherited from [deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md)|
|priority|Int32|Not yet documented Inherited from [deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md)|
|createdDateTime|DateTimeOffset|Not yet documented Inherited from [deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|Not yet documented Inherited from [deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md)|
|version|Int32|Not yet documented Inherited from [deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md)|
|showInstallationProgress|Boolean|Show or hide installation progress to user|
|blockDeviceSetupRetryByUser|Boolean|Allow the user to retry the setup on installation failure|
|allowDeviceResetOnInstallFailure|Boolean|Allow or block device reset on installation failure|
|allowLogCollectionOnInstallFailure|Boolean|Allow or block log collection on installation failure|
|customErrorMessage|String|Set custom error message to show upon installation failure|
|installProgressTimeoutInMinutes|Int32|Set installation progress timeout in minutes|
|allowDeviceUseOnInstallFailure|Boolean|Allow the user to continue using the device on installation failure|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[enrollmentConfigurationAssignment](../resources/intune_onboarding_enrollmentconfigurationassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10EnrollmentCompletionPageConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10EnrollmentCompletionPageConfiguration",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "priority": 1024,
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "version": 1024,
  "showInstallationProgress": true,
  "blockDeviceSetupRetryByUser": true,
  "allowDeviceResetOnInstallFailure": true,
  "allowLogCollectionOnInstallFailure": true,
  "customErrorMessage": "String",
  "installProgressTimeoutInMinutes": 1024,
  "allowDeviceUseOnInstallFailure": true
}
```



