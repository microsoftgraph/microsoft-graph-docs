---
title: "cloudPcOnPremisesConnectionHealthCheck resource type"
description: "The result of a cloud PC on-premises connection health check."
author: "AshleyYangSZ"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcOnPremisesConnectionHealthCheck resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The result of a cloud PC on-premises connection health check.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[RunHealthChecks of cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-runhealthcheck.md)|None|Run the health checks of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for this health check item.|
|status|[cloudPcOnPremisesConnectionStatus](../resources/cloudpconpremisesconnection.md#cloudpconpremisesconnectionstatus-values)|The status of the health check item. Possible values are: `pending`, `running`, `passed`, `failed`, `unknownFutureValue`. Read-only.|
|startDateTime|DateTimeOffset|The start time of the health check item. Read-only.|
|endDateTime|DateTimeOffset|The end time of the health check item. Read-only.|
|errorType|[cloudPcOnPremisesConnectionHealthCheckErrorType](#cloudpconpremisesconnectionhealthcheckerrortype-values)|The type of error that occurred during this health check.|
|recommendedAction|String|The recommended action to fix the corresponding error.|
|additionalDetails|String|Additional details about the health check or the recommended action.|

### cloudPcOnPremisesConnectionHealthCheckErrorType values

|Member|Description|
|:---|:---|
|dnsCheckFqdnNotFound|The DNS check failed because the fully qualified domain name was not found. Please re-enter fully qualified domain name.|
|dnsCheckUnknownError|The DNS check failed due to an unknown error. Please contact customer support.|
|adJoinCheckFqdnNotFound|The active domain join check failed because the fully qualified domain name was not found. Please re-enter fully qualified domain name.|
|adJoinCheckIncorrectCredentials|The active domain join check failed because the domain credentials are incorrect. Please update the username and password.|
|adJoinCheckOrganizationalUnitNotFound|The active domain join check failed because the specified organizational unit was not found. Please re-enter organization unit.|
|adJoinCheckOrganizationalUnitIncorrectFormat|The active domain join check failed beccause the format of the specified organizational unit is incorrect. Example format: “OU=OU1,OU=OU2,OU=OU3,DC=DC1”.|
|adJoinCheckAccessDenied|The active domain join check failed because access is denied when non-administrator users who have been delegated control try to join computer objects to a domain controller. Please assign the correct permission to the customer to join computer object to the domain. Permissions needed: Create computer objects, Delete computer objects.|
|adJoinCheckUnknownError|The active domain join check failed due to an unknown error. Please contact customer support.|
|endpointConnectivityCheckCloudPcUrlNotAllowListed|The endpoint connectivity check failed because the CPC provision script storage URL isn’t on the allow list in the network firewall settings. Please add URLs to the list of allowed network firewall settings. The URLs can be found in additional information.|
|endpointConnectivityCheckWVDUrlNotAllowListed|The endpoint connectivity check failed because the WVD URL isn’t on the allow list in the network firewall settings. Please add URLs to the list of allowed network firewall settings.|
|endpointConnectivityCheckIntuneUrlNotAllowListed|The endpoint connectivity check failed because the Intune URL isn’t on the allow list in the network firewall settings. Please add URLs to the list of allowed network firewall settings.|
|endpointConnectivityCheckUnknownError|The endpoint connectivity check failed due to an unknown error. Please contact customer support.|
|aadConnectivityCheckUnknownError|The Azure Active Directory connectivity check failed due to an unknown error. Please contact customer support.|
|resourceAvailabilityCheckNoSubnetIP|The resource availability check failed because there were no available IP addresses in the subnet. Please free up some or change to another subnet and retry.|
|resourceAvailabilityCheckSubscriptionDisabled|The resource availability check failed due to a disabled Azure subscription. Please re-enable the subscription.|
|resourceAvailabilityCheckUnsupportedVNetRegion|Selected vNet is not in a supported Azure region.|
|resourceAvailabilityCheckUnknownError|The resource availability check failed due to an unknown error. Please contact customer support.|
|permissionCheckNoSubscriptionReaderRole|Cloud PC service principal does not have reader permissions on the specified Azure subscription. Please work with subscription owner to add reader role assignment on the Azure subscription for the Cloud PC service principal.|
|permissionCheckNoResourceGroupOwnerRole|Cloud PC service principal does not have owner permissions on the specified resource group. Please work with the subscription owner to add owner role assignment on the resource group for the Cloud PC service principal.|
|permissionCheckNoVNetContributorRole|Cloud PC service principal does not have network contributor permissions on the specified virtual network. Please work with subscription owner to add the network contributor role assignment for the Cloud PC service principal. |
|permissionCheckUnknownError|The permission check failed due to an unknown error. Please contact customer support.|
|internalServerErrorUnableToRunDscScript|Unable to run DSC script during the health check. The service needs access to WinRM to successfully provision the cloud PC. Please ensure that no Group Policy or related configuration is blocking the use of PowerShell/DSC.|
|internalServerUnknownError|The health check failed due to an unknown internal server error. Please contact customer support.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnectionHealthCheck",
  "displayName": "String",
  "status": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "errorType": "String",
  "recommendedAction": "String",
  "additionalDetails": "String"
}
```
