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
|callDurationSource|pstnCallDurationSource|The source of the call duration data. If the call uses a third-party telecommunications operator via the Operator Connect Program, the operator may provide their own call duration data. In this case, the property value is `operator`. Otherwise, the value is `microsoft`.|
|calleeNumber|String|Number dialed in [E.164](https://en.wikipedia.org/wiki/E.164) format.|
|callerNumber|String|Number that received the call for inbound calls or the number dialed for outbound calls. E.164 format.|
|callId|String|Call identifier. Not guaranteed to be unique.|
|callType|String|Whether the call was a PSTN outbound or inbound call and the type of call such as a call placed by a user or an audio conference.|
|charge|Double|Amount of money or cost of the call that is charged to your account.|
|conferenceId|String|ID of the audio conference.|
|connectionCharge|Double|Connection fee price.|
|currency|String|Type of currency used to calculate the cost of the call ([ISO 4217](https://en.wikipedia.org/wiki/ISO_4217)).|
|destinationContext|String|Whether the call was domestic (within a country or region) or international (outside a country or region) based on the user's location.|
|destinationName|String|Country or region dialed.|
|duration|Int32|How long the call was connected, in seconds.|
|endDateTime|DateTimeOffset|Call end time.|
|id|String|Unique call identifier. GUID.|
|inventoryType|String|User's phone number type, such as a service of toll-free number.|
|licenseCapability|String|The license used for the call.|
|operator|String|The telecommunications operator which provided PSTN services for this call. This may be Microsoft, or it may be a third-party operator via the [Operator Connect Program](https://techcommunity.microsoft.com/t5/microsoft-teams-blog/introducing-operator-connect-and-more-teams-calling-updates/ba-p/2176398).|
|startDateTime|DateTimeOffset|Call start time.|
|tenantCountryCode|String|Country code of the tenant, [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|usageCountryCode|String|Country code of the user, [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|userDisplayName|String|Display name of the user.|
|userId|String|Calling user's ID in Graph. GUID. This and other user info will be null/empty for bot call types (ucap_in, ucap_out).|
|userPrincipalName|String|UserPrincipalName (sign-in name) in Azure Active Directory. This is usually the same as user's SIP Address, and can be same as user's e-mail address.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "ignored",
  "@odata.type": "microsoft.graph.callRecords.pstnCallLogRow",
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
  "inventoryType": "String",
  "operator": "String",
  "callDurationSource": "String"
}
```


