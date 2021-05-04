---
title: "Put authenticationListener"
description: "Replace an authenticationListener object."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Put authenticationListener

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Replace an [authenticationListener](../resources/authenticationlistener.md) defined for the onSignupStart event in the authentication pipeline.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.ApplicationConfiguration|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.ReadWrite.ApplicationConfiguration|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PUT /identity/events/onSignupStart/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [authenticationListener](../resources/authenticationlistener.md) object.

The following table shows the properties that are required when you create the [invokeUserFlowListener](../resources/invokeuserflowlistener.md).

|Property|Type|Description|
|:---|:---|:---|
|priority|Int32|The priority of the listener. Determines the order of evaluation when an event has multiple listeners. The priority is evaluated from low to high.|
|sourceFilter|[authenticationSourceFilter](../resources/authenticationsourcefilter.md)|Filter based on the source of the authentication that is used to determine whether the listener is evaluated. This is currently limited to evaluations based on application the user is authenticating to.|
|userFlow|[b2xIdentityUserFlow](../resources/b2xidentityuserflow.md)|The reference to the user flow object that is invoked in this action.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "put_authenticationlistener_from_"
}
-->

``` http
PUT https://graph.microsoft.com/beta/identity/events/onSignupStart/{id}
Content-Type: application/json

{
    "@odata.type": "#Microsoft.Graph.InvokeUserFlowListener",
    "priority": 101,
    "sourceFilter": {
        "includeApplications": [
            "1fc41a76-3050-4529-8095-9af8897cf63d"
        ]
    },
    "userFlow": {
        "id": "B2X_1_Partner"
    }
}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
