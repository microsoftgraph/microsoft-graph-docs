---
author: vlfesic-msft
ms.author: vlfesic
title: "tokenLifetimePolicy type"
description: "Specifies the lifetimes of tokens issued for various purposes"
---

# tokenLifetimePolicy type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Specifies the lifetimes of tokens issued for various purposes. This kind of policy can be [assigned](../api/policy-assign.md) to applications and service principals. Lifetimes can be configured for four kinds of tokens: 

- **Access Token** contains information about the identity and privileges associated with a user account that is used by clients to access protected resources like applications.
- **Refresh Token** is obtained together with the access token when a user authenticates against Azure AD through a client to access a protected resource. Although this token is not revoked or left unused for more than the **MaxInactiveTime**, it can be used to obtain a new access/refresh token pair when the current access token expires.
- **ID Token** fucntions like an access token, but is obtained via the browser.
- **Session Token** functions like a refresh token, but obtained via the browser.

Access/Refresh token pairs are obtained during client authentication. ID/Session token pairs are obtained during browser authentication.

## Properties

The [policy](policy.md) resource contains a definition JSON property, that specifies the behavior for this type of policy. This JSON object must be converted to a string with quotations escaped before insertion into the **definition** property. The table below describes the properties in the **definition** for the token lifetime policy type.

>**Note:** All time durations in these properties are specified in the format "dd.hh:mm:ss". The maximum values for properties denoted in days are 1 second short of the denoted number of days. For example, the maxiumum value of 1 day is specified as "23:59:59".

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|AccessTokenLifetime|String|Controls how long **both access and ID tokens** are considered valid. The minimum value is 10 minutes; the maximum value is 1 day; the default value is 1 hour.|
|MaxInactiveTime|String|Controls how old a refresh token can be before a client can no longer use it to retrieve a new access/refresh token pair to access a resource. The minimum value is 10 minutes; the maximum value is 90 days; the default value is 14 days.|
|MaxAgeSingleFactor|String|Controls how long a user can continue to use refresh tokens to get new access/refresh token pairs after the last time they authenticated successfully with only a single factor. Because single-factor is considered less secure than multi-factor authentication, we recommend setting this policy to an equal or lesser value than **MultiFactorRefreshTokenMaxAge**. The minimum value is 10 minutes; the maximum value is until-revoked; the default value is 365 days or until-revoked.|
|MaxAgeMultiFactor|String|Controls how long a user can continue to use refresh tokens to get new access/refresh token pairs after the last time they authenticated successfully with multi-factors. The minimum value is 10 minutes; the maximum value is until-revoked; the default value is 365 days or until-revoked.|
|MaxAgeSessionSingleFactor|String|Controls how long a user can continue to use session tokens to get new ID/session tokens after the last time they authenticated successfully with only a single factor. Because single-factor is considered less secure than multi-factor authentication, it is recommended that this policy is set to an equal or lesser value than **MultiFactorSessionTokenMaxAge**. The minimum value is 10 minutes; the maximum value is until-revoked; the default value is 365 days or until-revoked.|
|MaxAgeSessionMultiFactor|String|Controls how long a user can continue to use session tokens to get new ID/session tokens after the last time they authenticated successfully with multi-factors. The minimum value is 10 minutes; the maximum value is until-revoked; the default value is 365 days or until-revoked.|
|Version|Integer|Set value of 1. Required.|

## JSON representation
The following is a JSON representation of the resource.

```json
{
  "definition":["{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"8:00:00\",\"MaxInactiveTime\":\"20:00:00\",}}"],
  "displayName":"Test Policy",
  "isOrganizationDefault":false,
  "type":"TokenLifetimePolicy",
}
```