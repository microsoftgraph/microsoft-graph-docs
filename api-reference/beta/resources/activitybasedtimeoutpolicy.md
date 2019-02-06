---
author: vlfesic-msft
ms.author: vlfesic
title: "activityBasedTimeoutPolicy type"
description: "Specifies a shared activity-based timeout policy."
---

# activityBasedTimeoutPolicy type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A policy that enables you to configure idle timeout for web sessions for applications that support activity-based timeout functionality. Applications will enforce automatic signout after a period of inactivity. This type of policy must be applied at the organization level.

## Properties

The [policy](policy.md) resource contains a definition JSON property, that specifies the behavior for this type of policy. This JSON object must be converted to a string with quotations escaped before insertion into the **definition** property. The table below describes the properties in the **definition** for the activity-based timeout policy type.

>**Note:** All time durations in these properties are specified in the following format: dd.hh:mm:ss.

The maximum values for properties denoted in days are 1 second short of the denoted number of days. For example, the maximum value of 1 day is specified as 23:59:59.

| Property	   | Type	|Description|
|:-------------|:------|:---------|
|Version|Integer|Policy version. Set value of 1. Required.|
|ApplicationPolicies|Array|Collection of application policies.|
|ApplicationId|String|Application identifier the policy applies to. A value of "default" indicates the default value that applies to all applications that support activity-based timeout functionality but do not have application-specific overrides. Allowed values:<br>- default: applies to all applications that support activity-based timeout functionality<br>- c44b4083-3bb0-49c1-b47d-974e53cbdf3c: applies policy to Azure Portal|
|WebSessionIdleTimeout|String|The period of user inactivity after which the user's web session is considered expired. The minimum value is 5 minutes; the maximum value is 1  day.|

## JSON representation
The following is a JSON representation of the ActivityBasedTimeoutPolicy entity type.

```json
{
  "definition":["{\"ActivityBasedTimeoutPolicy\":{\"Version\":1,\"ApplicationPolicies\":[{\"ApplicationId\":\"default\",\"WebSessionIdleTimeout\":\"01:00:00\"},{\"ApplicationId\":\"c44b4083-3bb0-49c1-b47d-974e53cbdf3c\",\"WebSessionIdleTimeout\":\"00:15:00\"}]}}"],
  "displayName":"ActivityBasedTimeoutPolicy",
  "isOrganizationDefault":true,
  "type":"ActivityBasedTimeoutPolicy"
}
```

