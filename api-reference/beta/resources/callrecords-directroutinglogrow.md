---
title: "directRoutingLogRow resource type"
description: "Represents a row of data in the direct routing call log."
author: "williamlooney"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# directRoutingLogRow resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a row of data in the direct routing call log. Each row maps to one call.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique call identifier. GUID.|
|correlationId|String|Identifier for the call that you can use when calling Microsoft Support. GUID.|
|userId|String|Calling user's ID in Graph. This and other user info will be null/empty for bot call types. GUID.|
|userPrincipalName|String|UserPrincipalName (sign-in name) in Azure Active Directory. This is usually the same as user's SIP Address, and can be same as user's e-mail address.|
|userDisplayName|String|Display name of the user.|
|startDateTime|DateTimeOffset|Call start time.<br/>For failed and unanswered calls, this can be equal to invite or failure time.|
|inviteDateTime|DateTimeOffset| When the initial invite was sent.|
|failureDateTime|DateTimeOffset| Only exists for failed (not fully established) calls.|
|endDateTime|DateTimeOffset| Only exists for successful (fully established) calls. Time when call ended.|
|duration|Int32| Duration of the call in seconds.|
|callType|String| Call type and direction.|
|successfulCall|Boolean| Success or attempt.|
|callerNumber|String| Number of the user or bot who made the call. [E.164](https://en.wikipedia.org/wiki/E.164) format, but may include additional data.|
|calleeNumber|String| Number of the user or bot who received the call. [E.164](https://en.wikipedia.org/wiki/E.164) format, but may include additional data.|
|mediaPathLocation|String| The datacenter used for media path in non-bypass call.|
|signalingLocation|String| The datacenter used for signaling for both bypass and non-bypass calls.|
|finalSipCode|Int32| The code with which the call ended, [RFC 3261](https://tools.ietf.org/html/rfc3261).|
|callEndSubReason|Int32| In addition to the SIP codes, Microsoft has own subcodes that indicate the specific issue.|
|finalSipCodePhrase|String| Description of the SIP code and Microsoft subcode.|
|trunkFullyQualifiedDomainName|String| Fully qualified domain name of the session border controller.|
|mediaBypassEnabled|Boolean| Indicates if the trunk was enabled for media bypass or not.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "ignored",
  "@odata.type": "microsoft.graph.callRecords.directRoutingLogRow",
  "baseType": "",
  "keyProperty": "id"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.callRecords.directRoutingLogRow",
  "id": "String (identifier)",
  "correlationId": "String",
  "userId": "String",
  "userPrincipalName": "String",
  "userDisplayName": "String",
  "startDateTime": "String (timestamp)",
  "inviteDateTime": "String (timestamp)",
  "failureDateTime": "String (timestamp)",
  "duration": "Integer",
  "callType": "String",
  "successfulCall": "Boolean",
  "callerNumber": "String",
  "calleeNumber": "String",
  "mediaPathLocation": "String",
  "signalingLocation": "String",
  "finalSipCode": "Integer",
  "callEndSubReason": "Integer",
  "finalSipCodePhrase": "String",
  "trunkFullyQualifiedDomainName": "String",
  "mediaBypassEnabled": "Boolean"
}
```


