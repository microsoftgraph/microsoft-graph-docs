---
title: "activityBasedTimeoutPolicy resource type"
description: "Specifies a shared activity-based timeout policy."
---

# activityBasedTimeoutPolicy resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A policy that enables you to configure idle timeout for web sessions for applications that support activity-based timeout functionality. Applications will enforce automatic signout after a period of inactivity. This type of policy must be applied at the organization level.

The following applications support activity-based timeout functionality:
- Azure portal
- Office 365 applications

## Properties
The following properties form the JSON object that represents an activity-based timeout policy. This JSON object must be converted to a string with quotations escaped to be inserted into the **definition**common policy property. 

>**Note:** All time durations in these properties are specified in the following format: dd.hh:mm:ss.

The maximum values for properties denoted in days are 1 second short of the denoted number of days. For example, the maximum value of 1 day is specified as 23:59:59.

| Property	   | Type	|Description| Min Value | Max Value | Default Value|
|:---------------|:--------|:----------|:--------|:--------|:----|
|Version|Integer|Policy version. Set value of 1. Required.|None|None|None|
|ApplicationPolicies|Array|Collection of application policies.|None|None|None|
|ApplicationId|String|Application identifier the policy applies to. "default" designates default value which applies to all applications supporting Activity Based Timeout functionality but not having application specific overrides.|None|None|None|
|WebSessionIdleTimeout|String|The period of user inactivity after which the user's web session is considered expired.|5 minutes|1 day|None|

## JSON representation
The following is a JSON representation of the resource.

```json
{
  "definition":["{\"ActivityBasedTimeoutPolicy\":{\"Version\":1,\"ApplicationPolicies\":[{\"ApplicationId\":\"default\",\"WebSessionIdleTimeout\":\"01:00:00\"},{\"ApplicationId\":\"c44b4083-3bb0-49c1-b47d-974e53cbdf3c\",\"WebSessionIdleTimeout\":\"00:15:00\"}]}}"],
  "displayName":"ActivityBasedTimeoutPolicy",
  "isOrganizationDefault":true,
  "type":"ActivityBasedTimeoutPolicy"
}
```

