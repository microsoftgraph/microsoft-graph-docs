---
title: "activityBasedTimeoutPolicy resource type"
description: "Specifies a shared Activity Based Timeout policy"
---

# activityBasedTimeoutPolicy resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Policy allows to configure web session idle timeout for applications supporting Activity Based Timeout functionality. Applications will enforce automatic sign out after a period of inactivity. This kind of policy must be applied on organization level.

## Properties
The properties below form the JSON object that represents an activity based timeout policy. This JSON object must be **converted to a string with quotations escaped** to be inserted into the "definition" common policy property. An example is shown below.

>Note: All time durations in these properties are specified in the format "dd.hh:mm:ss".

>Note: Max values for properties denoted in "days" are 1 second short of the denoted number of days. For example, the max value of 1 days is specified as "23:59:59".

| Property	   | Type	|Description| Min Value | Max Value | Default Value|
|:---------------|:--------|:----------|:--------|:--------|:----|
|Version|Integer|Policy version. Set value of 1. Required.|None|None|None|
|ApplicationPolicies|Array|Collection of application policies.|None|None|None|
|ApplicationId|String|Application identifier the policy applies to. "default" designates default value which applies to all applications supporting Activity Based Timeout functionality but not having application specific overrides.|None|None|None|
|WebSessionIdleTimeout|String|The period of user inactivity after which the user's web session is considered expired.|5 minutes|1 day|None|

## JSON representation
Here is a JSON representation of the resource.

```json
{
  "definition":["{\"ActivityBasedTimeoutPolicy\":{\"Version\":1,\"ApplicationPolicies\":[{\"ApplicationId\":\"default\",\"WebSessionIdleTimeout\":\"01:00:00\"},{\"ApplicationId\":\"c44b4083-3bb0-49c1-b47d-974e53cbdf3c\",\"WebSessionIdleTimeout\":\"00:15:00\"}]}}"],
  "displayName":"ActivityBasedTimeoutPolicy",
  "isOrganizationDefault":true,
  "type":"ActivityBasedTimeoutPolicy"
}
```
## Applications supporting Activity Based Timeout functionality
- Azure Portal
- Office 365 Applications
