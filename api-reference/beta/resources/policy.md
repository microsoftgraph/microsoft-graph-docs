---
title: "policy resource type"
description: "Represents an Azure AD policy. Policies are custom rules that can be enforced on applications, service principals, groups, or the entire organization they are assigned to. Currently only one type of policy is available:"
---

# policy resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an Azure AD policy. Policies are custom rules that can be enforced on applications, service principals, groups, or the entire organization they are assigned to.

The following are the policy types:

- [Token lifetime policy](tokenlifetimepolicy.md)
- [Activity-based timeout policy](activitybasedtimeoutpolicy.md)

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get policy](../api/policy-get.md)|Policy|Read properties and relationships of user object.|
|[Create policy](../api/policy-post.md)|Policy|Create a new policy object.|
|[Update policy](../api/policy-update.md)|None|Update policy object.|
|[Delete policy](../api/policy-delete.md)|None|Delete policy object.|
|[Assign policy](../api/policy-assign.md)|None|Assign a policy to an application, service principal.|
|[List policies](../api/policy-list.md)|Policy collection|Get all policy objects in the organization.|
|[List assigned policies](../api/policy-list-assigned.md)|Policy collection|Get all policy objects assigned to an application or service principal.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|definition|String|The string version of the specific policy. See below. Required.|
|displayName|String|A custom name for the policy. Required.|
|isOrganizationDefault|Boolean|If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false.|
|type|String|Specifies the type of policy. Required.|

## Relationships
|Relationship|Type|Description|
|:-------------|:-----------|:-----------|
|appliesTo|[directoryObject](../resources/directoryobject.md) collection|The applications, service principals, groups, or organization the policy applies to.|
