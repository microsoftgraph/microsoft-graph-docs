---
title: "accessReviewReviewerScope resource type"
description: "Represents who will review an access review."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewReviewerScope resource type

Namespace: microsoft.graph

The accessReviewReviewerScope defines who is specified in the [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) to review [appConsentRequests](../resources/appconsentrequest.md) and [userConsentRequests](../resources/appconsentrequest.md). This is expressed as an OData query, which allows reviewers to be specified both as a static list of users (i.e., specific users, group owners, group members) or dynamically (i.e., the case where every user is reviewed by their manager).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|query|String|The query specifying who will be the reviewer. See table for examples. |
|queryRoot|String|The type of query. Examples include `MicrosoftGraph` and `ARM`.|
|queryType|String|In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query (i.e., `./manager`) is specified.|

### Supported queries for accessReviewReviewerScope

|Scenario| query | queryType | queryRoot |
|--|--|--|--|
| Group owner as reviewer | /groups/{group id}/owners |MicrosoftGraph||
| Specific user as reviewer | /users/{user id} |MicrosoftGraph||
| Manager of user being reviewed as reviewer | ./manager | MicrosoftGraph |decisions|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewReviewerScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewReviewerScope",
  "query": "String",
  "queryType": "String",
  "queryRoot": "String"
}
```
