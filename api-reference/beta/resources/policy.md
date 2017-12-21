# policy resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an Azure AD policy. Policies are custom rules that can be enforced on applications, service principals, groups, or the entire organization they are assigned to. Currently only one type of policy is available:

- Token Lifetime Policy - Specifies the lifetime duration of tokens issued for applications and service principals.

This policy is described in further detail below.

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
| [Get policy](../api/policy_get.md) |Policy|Read properties and relationships of user object.|
|[Create policy](../api/policy_post.md)|Policy|Create a new policy object.|
|[Update policy](../api/policy_update.md)|None|Update policy object.|
|[Delete policy](../api/policy_delete.md)|None|Delete policy object.|
|[Assign policy](../api/policy_assign.md)|None|Assign a policy to an application, service principal.|
|[List policies](../api/policy_list.md)|Policy collection|Get all policy objects in the organization.|
|[List assigned policies](../api/policy_list_assigned.md)|Policy collection|Get all policy objects assigned to an application or service principal.|

### Common Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|definition|String|The string version of the specific policy. See below. Required.|
|displayName|String|A custom name for the policy. Required.|
|IsOrganizationDefault|Boolean|If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false.|
|type|String|Specifies the type of policy. Currently must be "TokenLifetimePolicy". Required.|

#### Common Relationships
|Relationship|Type|Description|
|:-------------|:-----------|:-----------|
|appliesTo|[directoryObject](../resources/directoryObject.md) collection|The applications, service principals, groups, or organization the policy applies to.|

## Token Lifetime Policy
Specifies the lifetimes of tokens issued for various purposes. This kind of policy can be [assigned](../api/policy_assign.md) to applications and service principals. There are four kinds of tokens whose lifetimes can be configured. Access/Refresh token pairs are obtained during authentication through a client, whereas ID/Session token pairs are obtained during authentication through a browser.

- **Access Token** contains information about the identity and privileges associated with a user account that is used by clients to access protected resources like applications.
- **Refresh Token** is obtained together with the access token when a user authenticates against Azure AD through a client to access a protected resource. While it is not revoked or left unused for more than the MaxInactiveTime (below), it can be used to obtain a new access/refresh token pair when the current access token expires.
- **ID Token** behaves like an access token, but obtained through the browser.
- **Session Token** behaves like a refresh token, but obtained through the browser.

## Properties
The properties below form the JSON object that represents a token lifetime policy. This JSON object must be **converted to a string with quotations escaped** to be inserted into the "definition" common policy property. An example is shown below.

>Note: All time durations in these properties are specified in the format "dd.hh:mm:ss".

>Note: Max values for properties denoted in "days" are 1 second short of the denoted number of days. For example, the max value of 1 days is specified as "23:59:59".

| Property	   | Type	|Description| Min Value | Max Value | Default Value|
|:---------------|:--------|:----------|:--------|:--------|:----|
|AccessTokenLifetime|String|Controls how long **both access and ID tokens** are considered valid.|10 minutes|1 day|1 hour|
|MaxInactiveTime|String|Controls how old a refresh token can be before a client can no longer use it to retrieve a new access/refresh token pair to access a resource.|10 minutes|90 days|14 days|
|MaxAgeSingleFactor|String|Controls how long a user can continue to use refresh tokens to get new access/refresh token pairs after the last time they authenticated successfully with only a single factor. Because single-factor is considered less secure than multi-factor authentication, it is recommended that this policy is set to an equal or lesser value than the MultiFactorRefreshTokenMaxAge.|10 minutes|until-revoked|365 days or until-revoked|
|MaxAgeMultiFactor|String|Controls how long a user can continue to use refresh tokens to get new access/refresh token pairs after the last time they authenticated successfully with multi factors.|10 minutes|until-revoked|365 days or until-revoked|
|MaxAgeSessionSingleFactor|String|Controls how long a user can continue to use session tokens to get new ID/session tokens after the last time they authenticated successfully with only a single factor. Because single-factor is considered less secure than multi-factor authentication, it is recommended that this policy is set to an equal or lesser value than the MultiFactorSessionTokenMaxAge|10 minutes|until-revoked|365 or until-revoked|
|MaxAgeSessionMultiFactor|String|Controls how long a user can continue to use session tokens to get new ID/session tokens after the last time they authenticated successfully with multi factors.|10 minutes|until-revoked|365 or until-revoked|
|Version|Integer|Set value of 1. Required.|None|None|None|

## JSON representation
Here is a JSON representation of the resource.

```json
{
  "definition":["{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"8:00:00\",\"MaxInactiveTime\":\"20:00:00\",}}"],
  "displayName":"Test Policy",
  "isOrganizationDefault":false,
  "type":"TokenLifetimePolicy",
}
```
