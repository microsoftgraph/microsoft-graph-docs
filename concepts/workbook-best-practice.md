---
title: "Best practices for Excel APIs in Microsoft Graph"
description: "List best practices and examples for Excel APIs in Microsoft Graph"
author: "grangeryy"
localization_priority: Normal
ms.prod: "excel"
---

# Best practices for working with the Excel API in Microsoft Graph

This article provides recommendations for working with the Excel APIs in Microsoft Graph.

## Manage sessions in the most efficient way

If you have more than one call to make within a certain period of time, we recommend that you create a session and pass the session ID with each request. To represent the session in the API, use the `workbook-session-id: {session-id}` header. By doing so, you can use the Excel APIs in the most efficient way.

The following example shows you how to add a new number to a table and then find one record in a workbook using this approach.

### Step 1: Create a session

#### Request

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/createSession
Content-type: application/json
Content-length: 52

{
  "persistChanges": true
}
```
#### Response

The following is a successful response.

```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 52

{
  "id": "id-value",
  "persistChanges": true
}
```

### Step 2: Add a new row to the table

#### Request

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/tables/Table1/rows/add
Content-type: application/json
workbook-session-id: {session-id}

{
  "values": [[“east”, “pear”, 4]]
}
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 42

{
  "index": 6,
  "values": [[“east”, “pear”, 4]]
}
```

### Step 3: Look up a value in the updated table

#### Request

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/functions/vlookup
Content-type: application/json
workbook-session-id: {session-id}

{
    "lookupValue":"pear",
    "tableArray":{"Address":"Sheet1!B2:C7"},
    "colIndexNum":2,
    "rangeLookup":false
}
```

#### Response

```http
HTTP code: 200 OK
content-type: application/json

{
    "value": 5
}
```

### Step 4: Close the session after all the requests are completed

#### Request

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/closeSession
Content-type: application/json
workbook-session-id: {session-id}
Content-length: 0

{
}
```

#### Response

```http
HTTP/1.1 204 No Content
```

For more details, see [Create session](/graph/api/workbook-createsession?view=graph-rest-1.0) and [Close session](/graph/api/workbook-closesession?view=graph-rest-1.0).

## Working with APIs that take a long time to complete

You might notice that some operations take an indeterminate amount time to complete; for example, opening a large workbook. It is easy to hit timeout while waiting for the response to these requests. To resolve this issue, we provide the long-running operation pattern. When you use this pattern, you don't need to worry about the timeout for the request.

Currently, the session creation Excel API in Microsoft Graph has the long-running operation pattern enabled. This pattern involves the following steps:

1. Add a `Prefer: respond-async` header to the request to indicate that it is a long-running operation when you crate a session.
2. A long-running operation will return a `202 Accepted` response along with a Location header to retrieve the operation status. If the session creation completes in several seconds, it will return a regular create session response instead of using the long-running operation pattern.
3. With the `202 Accepted` response, you can retrieve the operation status at the specified location. Operation status values include `notStarted`, `running`, `succeeded`, and `failed`.
4. After the operation completes, you can get the session creation result through the specified URL in the succeeded response.

The following example creates a session using the long-running operation pattern.

### Initial request to create session

#### Request

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/worksheets({id})/createSession
Prefer: respond-async
Content-type: application/json
{
    "persistChanges": true
}
```

#### Response
The long-running operation pattern will return a `202 Accepted` response similar to the following.

```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/operations/{operation-id}
Content-type: application/json

{
}
```

In some cases, if the creation succeeds within seconds, it won't enter the long-running operation pattern; instead, it returns as a regular create session and the successful request will return a `201 Created` response.

```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 52

{
  "id": "id-value",
  "persistChanges": true
}
```

The following example shows the response when the request fails.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 500 Internal Server Error
Content-type: application/json

{
  "error":{
    "code": "internalServerError",
    "message": "An internal server error occurred while processing the request.",
    "innerError": {
      "code": ""internalServerErrorUncategorized",
      "message": "An unspecified error has occurred.",
      "innerError": {
        "code": "GenericFileOpenError",
        "message": "The workbook cannot be opened."
      }
    }
  }
}
```

### Poll status of the long-running create session


With the long-running operation pattern, you can get the creation status at specified location by using the following request. The suggested interval to poll status is around 30 seconds. The maximum interval should be no more than 4 minutes.

#### Request

```http
GET https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/operations/{operation-id}
{
}
```

#### Response

The following is the response when the operation has a status of `running`.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": {operation-id},
    "status": "running"
}
```

The following is the response when the operation status is `succeeded`.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": {operation-id},
    "status": "succeeded",
    "resourceLocation": "https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/sessionInfoResource(key='{key}')
}
```

The following is the response when the operation status is `failed`.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": {operation-id},
  "status": "failed",
  "error":{
    "code": "internalServerError",
    "message": "An internal server error occurred while processing the request.",
    "innerError": {
      "code": ""internalServerErrorUncategorized",
      "message": "An unspecified error has occurred.",
      "innerError": {
        "code": "GenericFileOpenError",
        "message": "The workbook cannot be opened."
      }
    }
  }
}
```

For more details about errors, see [Error codes](/concepts/workbook-error-codes.md)

### Acquire session information

#### Request

With a status of `succeeded`, you can get the created session information through `resourceLocation` with a request similar to the following.

```http
GET https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/sessionInfoResource(key='{key}')
{
}
```

#### Response
The following is the response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "id-value",
    "persistChanges": true
}
```

>**Note:** Acquire session information depends on the initial request. You don't need to acquire the result if the initial request doesn't return a response body.
