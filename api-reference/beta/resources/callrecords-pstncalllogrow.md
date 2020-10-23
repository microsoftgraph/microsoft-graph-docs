---
title: "pstnCallLogRow resource type"
description: "Represents a row of data in the Public Switch Telephone Network (PSTN) call log."
author: "williamlooney"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# pstnCallLogRow resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a row of data in the Public Switch Telephone Network (PSTN) call log. Each row maps to one call.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique call identifier. GUID.|
|callId|String|Call identifier. Not guaranteed to be unique.|
|userId|String|Calling user's ID in Graph. GUID. This and other user info will be null/empty for bot call types (ucap_in, ucap_out).|
|userPrincipalName|String|UserPrincipalName (sign-in name) in Azure Active Directory. This is usually the same as user's SIP Address, and can be same as user's e-mail address.|
|userDisplayName|String|Display name of the user.|
|startDateTime|DateTimeOffset|Call start time.|
|endDateTime|DateTimeOffset|Call end time.|
|duration|Int32|How long the call was connected, in seconds.|
|charge|Double|Amount of money or cost of the call that is charged to your account.|
|callType|String|Whether the call was a PSTN outbound or inbound call and the type of call such as a call placed by a user or an audio conference.|
|currency|String|Type of currency used to calculate the cost of the call ([ISO 4217](https://en.wikipedia.org/wiki/ISO_4217)).|
|calleeNumber|String|Number dialed in [E.164](https://en.wikipedia.org/wiki/E.164) format.|
|usageCountryCode|String|Country code of the user, [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|tenantCountryCode|String|Country code of the tenant, [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|connectionCharge|Double|Connection fee price.|
|callerNumber|String|Number that received the call for inbound calls or the number dialed for outbound calls. E.164 format.|
|destinationContext|String|Whether the call was domestic (within a country or region) or international (outside a country or region) based on the user's location.|
|destinationName|String|Country or region dialed.|
|conferenceId|String|ID of the audio conference.|
|licenseCapability|String|The license used for the call.|
|inventoryType|String|User's phone number type, such as a service of toll-free number.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "ignored",
  "@odata.type": "microsoft.graph.callRecords.pstnCallLogRow",
  "baseType": "",
  "keyProperty": "id"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.callRecords.pstnCallLogRow",
  "id": "String (identifier)",
  "callId": "String",
  "userId": "String",
  "userPrincipalName": "String",
  "userDisplayName": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "duration": "Integer",
  "charge": "Double",
  "callType": "String",
  "currency": "String",
  "calleeNumber": "String",
  "usageCountryCode": "String",
  "tenantCountryCode": "String",
  "connectionCharge": "Double",
  "callerNumber": "String",
  "destinationContext": "String",
  "destinationName": "String",
  "conferenceId": "String",
  "licenseCapability": "String",
  "inventoryType": "String"
}
```


