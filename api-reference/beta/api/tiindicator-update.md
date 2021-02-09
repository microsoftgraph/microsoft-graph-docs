---
title: "Update tiIndicator"
description: "Update the properties of a tiIndicator object."
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
doc_type: apiPageType
---

# Update tiIndicator

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [tiIndicator](../resources/tiindicator.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | ThreatIndicators.ReadWrite.OwnedBy |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | ThreatIndicators.ReadWrite.OwnedBy |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /security/tiIndicators/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {code} **Required** |
|Prefer | return=representation |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed. Required fields are: `id`, `expirationDateTime`, `targetProduct`.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|action|string| The action to apply if the indicator is matched from within the targetProduct security tool. Possible values are: `unknown`, `allow`, `block`, `alert`.|
|activityGroupNames|String collection|The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.|
|additionalInformation|String|A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed. Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.|
|confidence|Int32|An integer representing the confidence the data within the indicator accurately identifies malicious behavior. Acceptable values are 0 – 100 with 100 being the highest.|
|description|String|Brief description (100 characters or less) of the threat represented by the indicator.|
|diamondModel|[diamondModel](#diamondmodel-values)|The area of the Diamond Model in which this indicator exists. Possible values are: `unknown`, `adversary`, `capability`, `infrastructure`, `victim`.|
|expirationDateTime|DateTimeOffset| DateTime string indicating when the Indicator expires. All indicators must have an expiration date to avoid stale indicators persisting in the system. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `2014-01-01T00:00:00Z`.|
|externalId|String|An identification number that ties the indicator back to the indicator provider’s system (e.g. a foreign key).|
|isActive|Boolean|Used to deactivate indicators within system. By default, any indicator submitted is set as active. However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.|
|killChain|[killChain](#killchain-values) collection|A JSON array of strings that describes which point or points on the Kill Chain this indicator targets. See "killChain values" below for exact values.|
|knownFalsePositives|String|Scenarios in which the indicator may cause false positives. This should be human-readable text.|
|lastReportedDateTime|DateTimeOffset|The last time the indicator was seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `2014-01-01T00:00:00Z`|
|malwareFamilyNames|String collection|The malware family name associated with an indicator if it exists. Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence [threat encyclopedia](https://www.microsoft.com/wdsi/threats).|
|passiveOnly|Boolean|Determines if the indicator should trigger an event that is visible to an end-user. When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred. This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action. Default value is false.|
|severity|Int32|An integer representing the severity of the malicious behavior identified by the data within the indicator. Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all. Default value is 3.|
|tags|String collection|A JSON array of strings that stores arbitrary tags/keywords.|
|tlpLevel|[tlpLevel](#tlplevel-values)| Traffic Light Protocol value for the indicator. Possible values are: `unknown`, `white`, `green`, `amber`, `red`.|

### diamondModel values

For information about this model, see [The diamond model](http://diamondmodel.org).

| Values | Description |
|:-------|:------------|
|adversary|The indicator describes the adversary.|
|capability|The indicator is a capability of the adversary.|
|infrastructure|The indicator describes infrastructure of the adversary.|
|victim|The indicator describes the victim of the adversary.|

### killChain values

| Values | Description |
|:-------|:------------|
|Actions|Represents “Actions on Objectives”. The attacker is leveraging the compromised system to take actions such as a distributed denial of service attack.|
|C2|Represents the control channel by which a compromised system is manipulated.|
|Delivery|The process of distributing the exploit code to victims (for example USB, email, websites).|
|Exploitation|The exploit code taking advantage of vulnerabilities (for example, code execution).|
|Installation|Installing malware after a vulnerability has been exploited.|
|Reconnaissance|Indicator is evidence of an activity group harvesting information to be used in a future attack.|
|Weaponization|Turning a vulnerability into exploit code (for example, malware).|

### tlpLevel values

Every indicator must have a Traffic Light Protocol (tlp) value when it is submitted. This value represents the sensitivity and sharing scope of a given indicator.

| Values | Description |
|:-------|:------------|
|White| Sharing scope: Unlimited. Indicators can be shared freely, without restriction.|
|Green| Sharing scope: Community. Indicators can be shared with the security community.|
|Amber| Sharing scope: Limited. This is the default setting for indicators and restricts sharing to only those with a need-to-know: 1) Services and service operators that implement threat intelligence; 2) Customers whose system(s) exhibit behavior consistent with the indicator.|
|Red| Sharing scope: Personal. These indicators are to only be shared directly and, preferably, in person. Typically, TLP Red indicators are not ingested due to their pre-defined restrictions. If TLP Red indicators are submitted, the **passiveOnly** property should be set to `True` as well. |

## Response

If successful, this method returns a `204 No Content` response code.

If the optional request header is used, the method returns a `200 OK` response code and the updated [tiIndicator](../resources/tiindicator.md) object in the response body.

## Examples

### Example 1: Request without Prefer header

#### Request

The following is an example of the request without the `Prefer` header.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_tiIndicator"
}-->

```http
PATCH https://graph.microsoft.com/beta/security/tiIndicators/{id}
Content-type: application/json

{
  "description": "description-updated",
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-tiindicator-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-tiindicator-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-tiindicator-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-tiindicator-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tiIndicator"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Request with Prefer header

#### Request

The following is an example of the request that includes the `Prefer` header.

<!-- {
  "blockType": "request",
  "name": "update_tiIndicator"
}-->

```http
PATCH https://graph.microsoft.com/beta/security/tiIndicators/{id}
Content-type: application/json
Prefer: return=representation

{
  "additionalInformation": "additionalInformation-after-update",
  "confidence": 42,
  "description": "description-after-update",
}
```

#### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tiIndicator"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Security/tiIndicators/$entity",
    "id": "e58c072b-c9bb-a5c4-34ce-eb69af44fb1e",
    "azureTenantId": "XXXXXXXXXXXXXXXXXXXXXXXXX",
    "action": null,
    "additionalInformation": "additionalInformation-after-update",
    "activityGroupNames": [],
    "confidence": 42,
    "description": "description-after-update",
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update tiIndicator",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->


