---
title: "serviceHealthIssue resource type"
description: "Represents a service health issue in a service."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service-communications"
doc_type: resourcePageType
---

# serviceHealthIssue resource type

Namespace: microsoft.graph

Represents a service health issue in a service.

The service health issue can be a service incident or service advisory. For example:

* Service incident: "Exchange mailbox service is down".
* Service advisory: "Users may experience delays in emails reception".

Inherits from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get serviceHealthIssue](../api/servicehealthissue-get.md)|[serviceHealthIssue](../resources/servicehealthissue.md)|Retrieve the properties and relationships of a [serviceHealthIssue](../resources/servicehealthissue.md) object. |
|[Get post-incident review report](../api/servicehealthissue-incidentreport.md)|Stream|Provides the post incident report (PIR) document of a specified service issue for tenant. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|classification|serviceHealthClassificationType|The type of service health issue. Possible values are: `advisory`, `incident`, `unknownFutureValue`.|
|details|Collection([keyValuePair](../resources/keyvaluepair.md))|Additional details about service health issue. This property doesn't support filters. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|endDateTime|DateTimeOffset|The end time of the service issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|feature|String|The feature name of the service issue.|
|featureGroup|String|The feature group name of the service issue.|
|id|String|The id of the service issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|impactDescription|String|The description of the service issue impact.|
|isResolved|Boolean|Indicates whether the issue is resolved.|
|lastModifiedDateTime|DateTimeOffset|The last modified time of the issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|origin|serviceHealthOrigin|Indicates the origin of the service issue. Possible values are: `microsoft`, `thirdParty`, `customer`, `unknownFutureValue`.|
|posts|Collection([serviceHealthIssuePost](../resources/servicehealthissuepost.md))|Collection of historical posts for the service issue.|
|service|String|Indicates the service affected by the issue.|
|startDateTime|DateTimeOffset|The start time of the service issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|status|serviceHealthStatus|The status of the service issue. Possible values are: `serviceOperational`, `investigating`, `restoringService`, `verifyingService`, `serviceRestored`, `postIncidentReviewPublished`, `serviceDegradation`, `serviceInterruption`, `extendedRecovery`, `falsePositive`, `investigationSuspended`, `resolved`, `mitigatedExternal`, `mitigated`, `resolvedExternal`, `confirmed`, `reported`, `unknownFutureValue`.|
|title|String|The title of the service issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceHealthIssue",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceHealthIssue",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "title": "String",
  "details": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "id": "String (identifier)",
  "impactDescription": "String",
  "classification": "String",
  "origin": "String",
  "posts": [
    {
      "@odata.type": "microsoft.graph.serviceHealthIssuePost"
    }
  ],
  "status": "String",
  "service": "String",
  "feature": "String",
  "featureGroup": "String",
  "isResolved": "Boolean"
}
```

