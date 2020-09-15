---
title: "tiIndicator resource type"
description: "Threat intelligence (TI) indicators represent data used to identify malicious activities."
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
doc_type: resourcePageType
---

# tiIndicator resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Threat intelligence (TI) indicators represent data used to identify malicious activities. If your organization works with threat indicators, either by generating your own, obtaining them from open source feeds, sharing with partner organizations or communities, or by purchasing feeds of data, you might want to use these indicators in various security tools for matching with log data. The Microsoft Graph Security API **tiIndicators** entity allows you to upload your threat indicators to Microsoft security tools for the actions of allow, block, or alert.

Threat indicators uploaded via **tiIndicators** will be used in conjunction with Microsoft threat intelligence to provide a customized security solution for your organization. When using the **tiIndicators** entity, you specify the Microsoft security solution you want to utilize the indicators for via the **targetProduct** property and you specify the action (allow, block, or alert) to which the security solution should apply the indicators via the **action** property.

Current **targetProduct** support includes the following:

- **Azure Sentinel** – Supports all documented **tiIndicators** methods listed in the following section.
- **Microsoft Defender ATP (Microsoft Defender Advanced Threat Protection)** – Supports the following **tiIndicators** methods:
     - [Get tiIndicator](../api/tiindicator-get.md)
     - [Create tiIndicator](../api/tiindicators-post.md)
     - [List tiIndicators](../api/tiindicators-list.md)
     - [Update](../api/tiindicator-update.md)
     - [Delete](../api/tiindicator-delete.md)

     Support for the bulk methods is coming soon.

  > [!NOTE]
  >The following indicator types are supported by Microsoft Defender ATP targetProduct:
  > - Files
  > - IP addresses: Microsoft Defender ATP supports destination IPv4/IPv6 only – set property in networkDestinationIPv4 or    networkDestinationIPv6 properties in Microsoft Graph Security API **tiIndicator**.
  > - URLs/domains

   There is a limit of 15000 indicators per tenant for Microsoft Defender ATP.

For details about the types of indicators supported and limits on indicator counts per tenant, see [Manage indicators](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get tiIndicator](../api/tiindicator-get.md) | [tiIndicator](tiindicator.md) | Read properties and relationships of tiIndicator object. |
| [Create tiIndicator](../api/tiindicators-post.md) | [tiIndicator](tiindicator.md) | Create a new tiIndicator by posting to the tiIndicators collection. |
| [List tiIndicators](../api/tiindicators-list.md) | [tiIndicator](tiindicator.md) collection | Get a tiIndicator object collection. |
| [Update](../api/tiindicator-update.md) | [tiIndicator](tiindicator.md) | Update tiIndicator object. |
| [Delete](../api/tiindicator-delete.md) | None | Delete tiIndicator object. |
|[deleteTiIndicators](../api/tiindicator-deletetiindicators.md)|None| Delete multiple tiIndicator objects.|
|[deleteTiIndicatorsByExternalId](../api/tiindicator-deletetiindicatorsbyexternalid.md)|None| Delete multiple tiIndicator objects by the `externalId` property.|
|[submitTiIndicators](../api/tiindicator-submittiindicators.md)|[tiIndicator](tiindicator.md) collection|Create new tiIndicators by posting a tiIndicators collection.|
|[updateTiIndicators](../api/tiindicator-updatetiindicators.md)|[tiIndicator](tiindicator.md) collection| Update multiple tiIndicator objects.|

### Methods supported by each target product

| Method                                                          | Azure Sentinel                                                                                                                                                                                                                                                                                                                                                                      | Microsoft Defender ATP                                                                                                                                                                                               |
|:----------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Create tiIndicator](../api/tiindicators-post.md)               | Required fields are: `action`, `azureTenantId`, `description`, `expirationDateTime`, `targetProduct`, `threatType`, `tlpLevel`, and at least one email, network, or file observable.                                                                                                                                                                                                | Required fields are: `action`, and one of these following values: `domainName`, `url`, `networkDestinationIPv4`, `networkDestinationIPv6`, `fileHashValue` ( must supply `fileHashType` in case of `fileHashValue`). |
| [Submit tiIndicators](../api/tiindicator-submittiindicators.md) | Refer to the [Create tiIndicator](../api/tiindicators-post.md) method for required fields for each tiIndicator. There's a limit of 100 tiIndicators per request.                                                                                                                                                                                                                    | Refer to the [Create tiIndicator](../api/tiindicators-post.md) method for required fields for each tiIndicator. There's a limit of 100 tiIndicators per request.                                                     |
| [Update tiIndicator](../api/tiindicator-update.md)              | Required fields are: `id`, `expirationDateTime`, `targetProduct`. <br> Editable fields are:  `action`, `activityGroupNames`, `additionalInformation`, `confidence`, `description`, `diamondModel`, `expirationDateTime`, `externalId`, `isActive`, `killChain`, `knownFalsePositives`, `lastReportedDateTime`, `malwareFamilyNames`, `passiveOnly`, `severity`, `tags`, `tlpLevel`. | Required fields are: `id`, `expirationDateTime`, `targetProduct`. <br> Editable fields are: `expirationDateTime`, `severity`, `description`.                                                                         |
| [Update tiIndicators](../api/tiindicator-updatetiindicators.md) | Refer to the [Update tiIndicator](../api/tiindicator-update.md) method for required and editable fields for each tiIndicator.                                                                                                                                                                                                                                                       | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p>                                                                                                             |
| [Delete tiIndicator](../api/tiindicator-delete.md)              | Required field is: `id`.                                                                                                                                                                                                                                                                                                                                                            | Required field is: `id`.                                                                                                                                                                                             |
| [Delete tiIndicators](../api/tiindicator-deletetiindicators.md) | Refer to the [Delete tiIndicator](../api/tiindicator-delete.md) method above for required field for each tiIndicator.                                                                                                                                                                                                                                                               | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p>                                                                                                             |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|action|string| The action to apply if the indicator is matched from within the targetProduct security tool. Possible values are: `unknown`, `allow`, `block`, `alert`. **Required.**|
|activityGroupNames|String collection|The cyber threat intelligence name(s) for the parties responsible for the malicious activity covered by the threat indicator.|
|additionalInformation|String|A catchall area into which extra data from the indicator not covered by the other tiIndicator properties may be placed. Data placed into additionalInformation will typically not be utilized by the targetProduct security tool.|
|azureTenantId|String| Stamped by the system when the indicator is ingested. The Azure Active Directory tenant id of submitting client. **Required.**|
|confidence|Int32|An integer representing the confidence the data within the indicator accurately identifies malicious behavior. Acceptable values are 0 – 100 with 100 being the highest.|
|description|String| Brief description (100 characters or less) of the threat represented by the indicator. **Required.**|
|diamondModel|[diamondModel](#diamondmodel-values)|The area of the Diamond Model in which this indicator exists. Possible values are: `unknown`, `adversary`, `capability`, `infrastructure`, `victim`.|
|expirationDateTime|DateTimeOffset| DateTime string indicating when the Indicator expires. All indicators must have an expiration date to avoid stale indicators persisting in the system. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. **Required.**|
|externalId|String| An identification number that ties the indicator back to the indicator provider’s system (e.g. a foreign key). |
|id|String|Created by the system when the indicator is ingested. Generated GUID/unique identifier. Read-only.|
|ingestedDateTime|DateTimeOffset| Stamped by the system when the indicator is ingested. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|isActive|Boolean| Used to deactivate indicators within system. By default, any indicator submitted is set as active. However, providers may submit existing indicators with this set to ‘False’ to deactivate indicators in the system.|
|killChain|[killChain](#killchain-values) collection|A JSON array of strings that describes which point or points on the Kill Chain this indicator targets. See ‘killChain values’ below for exact values. |
|knownFalsePositives|String|Scenarios in which the indicator may cause false positives. This should be human-readable text.|
|lastReportedDateTime|DateTimeOffset|The last time the indicator was seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|malwareFamilyNames|String collection|The malware family name associated with an indicator if it exists. Microsoft prefers the Microsoft malware family name if at all possible which can be found via the Windows Defender Security Intelligence [threat encyclopedia](https://www.microsoft.com/wdsi/threats).|
|passiveOnly|Boolean |Determines if the indicator should trigger an event that is visible to an end-user. When set to ‘true,’ security tools will not notify the end user that a ‘hit’ has occurred. This is most often treated as audit or silent mode by security products where they will simply log that a match occurred but will not perform the action. Default value is false. |
|severity|Int32| An integer representing the severity of the malicious behavior identified by the data within the indicator. Acceptable values are 0 – 5 where 5 is the most severe and zero is not severe at all. Default value is 3. |
|tags|String collection|A JSON array of strings that stores arbitrary tags/keywords. |
|targetProduct|String|A string value representing a single security product to which the indicator should be applied. Acceptable values are: `Azure Sentinel`, `Microsoft Defender ATP`. **Required**|
|threatType|[threatType](#threattype-values)| Each indicator must have a valid Indicator Threat Type. Possible values are: `Botnet`, `C2`, `CryptoMining`, `Darknet`, `DDoS`, `MaliciousUrl`, `Malware`, `Phishing`, `Proxy`, `PUA`, `WatchList`. **Required.** |
|tlpLevel|[tlpLevel](#tlplevel-values)| Traffic Light Protocol value for the indicator. Possible values are: `unknown`, `white`, `green`, `amber`, `red`. **Required.**|

### Indicator observables - email

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|emailEncoding|String|The type of text encoding used in the email.|
|emailLanguage|String|The language of the email.|
|emailRecipient|String|Recipient email address.|
|emailSenderAddress|String|Email address of the attacker&#124;victim.|
|emailSenderName|String|Displayed name of the attacker&#124;victim.|
|emailSourceDomain|String|Domain used in the email.|
|emailSourceIpAddress|String|Source IP address of email.|
|emailSubject|String|Subject line of email.|
|emailXMailer|String|X-Mailer value used in the email.|

### Indicator observables - file

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|fileCompileDateTime|DateTimeOffset|DateTime when the file was compiled. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|fileCreatedDateTime|DateTimeOffset| DateTime when the file was created.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|fileHashType|string| The type of hash stored in fileHashValue. Possible values are: `unknown`, `sha1`, `sha256`, `md5`, `authenticodeHash256`, `lsHash`, `ctph`.|
|fileHashValue|String| The file hash value.|
|fileMutexName|String| Mutex name used in file-based detections.|
|fileName|String|Name of the file if the indicator is file-based. Multiple file names may be delimited by commas. |
|filePacker|String|The packer used to build the file in question.|
|filePath|String|Path of file indicating compromise. May be a Windows or *nix style path.|
|fileSize|Int64|Size of the file in bytes.|
|fileType|String| Text description of the type of file. For example, “Word Document” or “Binary”.|

### Indicator observables - network

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|domainName|String|Domain name associated with this indicator. Should be of the format subdomain.domain.topleveldomain (For example, baddomain.domain.net)|
|networkCidrBlock|String| CIDR Block notation representation of the network referenced in this indicator. Use only if the Source and Destination cannot be identified. |
|networkDestinationAsn|Int32|The destination autonomous system identifier of the network referenced in the indicator.|
|networkDestinationCidrBlock|String|CIDR Block notation representation of the destination network in this indicator.|
|networkDestinationIPv4|String|IPv4 IP address destination.|
|networkDestinationIPv6|String|IPv6 IP address destination.|
|networkDestinationPort|Int32|TCP port destination.|
|networkIPv4|String| IPv4 IP address. Use only if the Source and Destination cannot be identified. |
|networkIPv6|String| IPv6 IP address. Use only if the Source and Destination cannot be identified. |
|networkPort|Int32| TCP port. Use only if the Source and Destination cannot be identified. |
|networkProtocol|Int32|Decimal representation of the protocol field in the IPv4 header.|
|networkSourceAsn|Int32|The source autonomous system identifier of the network referenced in the indicator.|
|networkSourceCidrBlock|String|CIDR Block notation representation of the source network in this indicator|
|networkSourceIPv4|String|IPv4 IP Address source.|
|networkSourceIPv6|String|IPv6 IP Address source.|
|networkSourcePort|Int32|TCP port source.|
|url|String|Uniform Resource Locator. This URL must comply with RFC 1738.|
|userAgent|String|User-Agent string from a web request that could indicate compromise.|

### diamondModel values

For information about this model, see [The Diamond Model](http://diamondmodel.org).

| Member | Value | Description |
|:-------|:----- |:------------|
| unknown |  0    | |
| adversary |  1    |The indicator describes the adversary.|
| capability |  2   |Indicator is a capability of the adversary.|
| infrastructure | 3 |The indicator describes infrastructure of the adversary.|
| victim | 4 |The indicator describes the victim of the adversary.|
| unknownFutureValue | 127 | |

### killChain values

| Member | Description |
|:-------|:------------|
|Actions|Indcates that the attacker is leveraging the compromised system to take actions such as a distributed denial of service attack.|
|C2|Represents the control channel by which a compromised system is manipulated.|
|Delivery|The process of distributing the exploit code to victims (for example USB, email, websites).|
|Exploitation|The exploit code taking advantage of vulnerabilities (for example, code execution).|
|Installation|Installing malware after a vulnerability has been exploited.|
|Reconnaissance|Indicator is evidence of an activity group harvesting information to be used in a future attack.|
|Weaponization|Turning a vulnerability into exploit code (for example, malware).|

### threatType values

| Member | Description |
|:-------|:------------|
|Botnet| Indicator is detailing a botnet node/member.|
|C2|Indicator is detailing a Command & Control node of a botnet.|
|CryptoMining|Traffic involving this network address / URL is an indication of CyrptoMining / Resource abuse.|
|Darknet|Indicator is that of a Darknet node/network.
|DDoS|Indicators relating to an active or upcoming DDoS campaign.|
|MaliciousUrl|URL that is serving malware.|
|Malware|Indicator describing a malicious file or files.|
|Phishing|Indicators relating to a phishing campaign.|
|Proxy|Indicator is that of a proxy service.|
|PUA|Potentially Unwanted Application.|
|WatchList|This is the generic bucket into which indicators are placed when it cannot be determined exactly what the threat is or will require manual interpretation. This should typically not be used by partners submitting data into the system.|

### tlpLevel values

Every indicator must also have a Traffic Light Protocol value when it is submitted. This value represents the sensitivity and sharing scope of a given indicator.

| Member | Description |
|:-------|:------------|
|White| Sharing scope: Unlimited. Indicators can be shared freely, without restriction.|
|Green| Sharing scope: Community. Indicators may be shared with the security community.|
|Amber| Sharing scope: Limited. This is the default setting for indicators and restricts sharing to only those with a ‘need-to-know’  being 1) Services and service operators that implement threat intelligence 2) Customers whose system(s) exhibit behavior consistent with the indicator.|
|Red| Sharing scope: Personal. These indicators are to only be shared directly and, preferably, in person. Typically, TLP Red indicators are not ingested due to their pre-defined restrictions. If TLP Red indicators are submitted, the “PassiveOnly” property should be set to `True` as well. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.tiIndicator",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "action": "string",
  "activityGroupNames": ["String"],
  "additionalInformation": "String",
  "azureTenantId": "String",
  "confidence": 1024,
  "description": "String",
  "diamondModel": "string",
  "domainName": "String",
  "emailEncoding": "String",
  "emailLanguage": "String",
  "emailRecipient": "String",
  "emailSenderAddress": "String",
  "emailSenderName": "String",
  "emailSourceDomain": "String",
  "emailSourceIpAddress": "String",
  "emailSubject": "String",
  "emailXMailer": "String",
  "expirationDateTime": "String (timestamp)",
  "externalId": "String",
  "fileCompileDateTime": "String (timestamp)",
  "fileCreatedDateTime": "String (timestamp)",
  "fileHashType": "string",
  "fileHashValue": "String",
  "fileMutexName": "String",
  "fileName": "String",
  "filePacker": "String",
  "filePath": "String",
  "fileSize": 1024,
  "fileType": "String",
  "id": "String (identifier)",
  "ingestedDateTime": "String (timestamp)",
  "isActive": true,
  "killChain": ["String"],
  "knownFalsePositives": "String",
  "lastReportedDateTime": "String (timestamp)",
  "malwareFamilyNames": ["String"],
  "networkCidrBlock": "String",
  "networkDestinationAsn": 1024,
  "networkDestinationCidrBlock": "String",
  "networkDestinationIPv4": "String",
  "networkDestinationIPv6": "String",
  "networkDestinationPort": 1024,
  "networkIPv4": "String",
  "networkIPv6": "String",
  "networkPort": 1024,
  "networkProtocol": 1024,
  "networkSourceAsn": 1024,
  "networkSourceCidrBlock": "String",
  "networkSourceIPv4": "String",
  "networkSourceIPv6": "String",
  "networkSourcePort": 1024,
  "passiveOnly": true,
  "severity": 1024,
  "tags": ["String"],
  "targetProduct": "String",
  "threatType": "String",
  "tlpLevel": "string",
  "url": "String",
  "userAgent": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "tiIndicator resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
