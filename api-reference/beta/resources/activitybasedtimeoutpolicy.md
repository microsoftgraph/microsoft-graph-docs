---
title: "activityBasedTimeoutPolicy resource type"
description: "Represents a policy that can control the idle timeout for web sessions for applications that support activity-based timeout functionality."
localization_priority: Normal
author: "lujiangfeng666"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# activityBasedTimeoutPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy that can control the idle timeout for web sessions for applications that support activity-based timeout functionality. Applications enforce automatic signout after a period of inactivity. This type of policy can only be applied at the organization level (by setting the **isOrganizationDefault** property to `true`).

Inherits from [stsPolicy](stsPolicy.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create activityBasedTimeoutPolicy](../api/activitybasedtimeoutpolicy-post-activitybasedtimeoutpolicies.md) | [activityBasedTimeoutPolicy](activitybasedtimeoutpolicy.md) | Create an activityBasedTimeoutPolicy object. |
| [Get activityBasedTimeoutPolicy](../api/activitybasedtimeoutpolicy-get.md) | [activityBasedTimeoutPolicy](activitybasedtimeoutpolicy.md) | Read properties and relationships of an activityBasedTimeoutPolicy object. |
| [List activityBasedTimeoutPolicies](../api/activitybasedtimeoutpolicy-list.md) | [activityBasedTimeoutPolicy](activitybasedtimeoutpolicy.md) | Read properties and relationships of activityBasedTimeoutPolicy objects. |
| [Update activityBasedTimeoutPolicy](../api/activitybasedtimeoutpolicy-update.md) | None | Update an activityBasedTimeoutPolicy object. |
| [Delete activityBasedTimeoutPolicy](../api/activitybasedtimeoutpolicy-delete.md) | None | Delete an activityBasedTimeoutPolicy object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Unique identifier for this policy. Read-only.|
|definition|String collection| A string collection containing a JSON string that defines the rules and settings for this policy. See below for more details about the JSON schema for this property. Required.|
|description|String| Description for this policy.|
|displayName|String| Display name for this policy. Required.|
|isOrganizationDefault|Boolean|If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false.|


### Properties of an activity-based timeout policy definition
The properties below form the JSON object that represents an activity-based timeout policy. This JSON object must be **converted to a string with quotations escaped** to be inserted into the **definition** property. An example is shown below in JSON format:

<!-- {
  "blockType": "ignored"
}-->
```json
{
  "definition":["{\"ActivityBasedTimeoutPolicy\":{\"Version\":1,\"ApplicationPolicies\":[{\"ApplicationId\":\"default\",\"WebSessionIdleTimeout\":\"01:00:00\"},{\"ApplicationId\":\"c44b4083-3bb0-49c1-b47d-974e53cbdf3c\",\"WebSessionIdleTimeout\":\"00:15:00\"}]}}"]
}
```

>Note: All time durations in these properties are specified in the format "dd.hh:mm:ss".

>Note: Max values for properties denoted in "days" are 1 second short of the denoted number of days. For example, the max value of 1 days is specified as "23:59:59".

| Property	   | Type	|Description|
|:-------------|:------|:---------|
|Version|Integer|Policy version. Set value of 1. Required.|
|ApplicationPolicies|JSON object|Collection of application policy. An application policy, is a combination of an ApplicationId and a WebSessionIdleTimeout: <br> <ul><li>**ApplicationId**: Allowed values:<ul><li> default: applies the policy to all applications that support activity-based timeout functionality but do not have application-specific override</li><li> c44b4083-3bb0-49c1-b47d-974e53cbdf3c: applies the policy to the Azure Portal</li></ul></li><li>**WebSessionIdleTimeout**: The period of user inactivity after which the user's web session is considered expired. The minimum value is 5 minutes; the maximum value is 1 day.</li></ul> |


## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.activityBasedTimeoutPolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "definition": ["String"],
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isOrganizationDefault": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "activityBasedTimeoutPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

