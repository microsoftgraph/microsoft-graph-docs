---
title: "Error handling for Excel APIs in Microsoft Graph"
description: "Error handling instructions for Excel APIs in Microsoft Graph"
author: "grangeryy"
localization_priority: Normal
ms.prod: "excel"
---

# Error handling for Excel APIs in Microsoft Graph

This article provides general instructions and suggestions for handling errors that are returned by the Excel APIs in Microsoft Graph when a request sent through the API fails.

## Types of error responses

Excel APIs in Microsoft Graph return two types of errors. One is the regular error response, which looks like the following.

```http
HTTP/1.1 <HTTP status code>
Content-type: application/json

{
  "error": <Error object>
}
```

The second is from the long-running operation pattern, which can return a `200 OK` HTTP status code and `failed` operation status in response body, as in the following example.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "status": "failed",
  "error": <Error object>
}
```

For both of these error responses, the error object has the following structure.

>**Note:** Error responses follow the definition in the [OData v4](https://docs.oasis-open.org/odata/odata-json-format/v4.0/os/odata-json-format-v4.0-os.html#_Toc372793091) specification for error responses.

```json
{
  "code": "string",
  "message": "string",
  "innerError": { "@odata.type": "odata.error" }
}
```

The `innerError` object might recursively contain more `innerError` objects with additional, more specific error codes. For example, the error object might contain more detailed error information in the second-level error code and message, as shown.

```json
{
  "code": "Top-level error code",
  "message": "Top-level error message",
  "innerError": {
    "code": "Second-level error code",
    "message": "Second-level error message",
    "innerError": { "@odata.type": "odata.error" }
  }
}
```

## Steps to handle error responses

Microsoft Graph clients can use the following steps to handle errors that occur with Excel APIs.

### 1. Determine whether it is a long-running operation error

Before handling an error, the first step is to determine whether the error response is from a long-running operation pattern or a regular pattern. A long-running operation error will return a `200 OK` HTTP status code and `failed` operation status in response body. A regular error response will return a corresponding HTTP error status code. 

### 2. Parse second-level error code

For both the long-running operation pattern and the regular pattern, we recommend that you first follow the instructions for second-level errors. The error code is case insensitive. The following table lists instructions for some of the errors. The service might add new error codes at any time.

| Code                               | Instructions
|:-----------------------------------|:---------------------------------------------
| **accessConflict**   | The failed request conflicts with other clients accessing the workbook (for example, another client has locked the workbook for edit). The Microsoft Graph client is not expected to resend the failed request until the conflict is resolved. An end user xN choose to manually perform the same operations with Excel Online to get more details about the conflict.
| **accessDenied**   | You cannot perform the requested operation (for example, performing changes to locked cells). The Microsoft Graph client is not expected to resend the failed request.
| **badRequestUncategorized**    | An unspecified error is found in the failed request. The Microsoft Graph client is not expected to resend the failed request.
| **conflictUncategorized**                   | The failed request conflicts with certain server state. The Microsoft Graph client is not expected to resend the failed request until the conflict is resolved. An end user can choose to manually perform the same operations with Excel Online to get more details about the conflict.
| **filteredRangeConflict**                   | The operation failed because it conflicts with a filtered range. The Microsoft Graph client is not expected to resend the failed request.
| **forbiddenUncategorized**                    | The failed request is not allowed. The Microsoft Graph client is not expected to resend the failed request. An end user can choose to manually perform the same operations with Excel Online to get more details about the restrictions.
| **gatewayTimeoutUncategorized**         | The service wasn’t able to complete the request within the time limit.
| **generalException**         | An internal error occurred while processing the request. The Microsoft Graph client is not expected to resend the failed request.
| **insertDeleteConflict**         | The insert or delete operation attempted resulted in a conflict. The Microsoft Graph client is not expected to resend the failed request.
| **internalServerErrorUncategorized**       | An unspecified error has occurred. The Microsoft Graph client is not expected to resend the failed request. If a session is specified in the failed request, further access to the session is not expected either.
| **invalidArgument**         | The argument is invalid or missing or has an incorrect format. The Microsoft Graph client is not expected to resend the failed request.
| **invalidReference**         | This reference is not valid for the current operation. The Microsoft Graph client is not expected to resend the failed request.
| **invalidSessionAccessConflict**             | The session specified in the request is invalid due to conflicts with other clients that are accessing the workbook (for example, another client has locked the workbook for edit). Further access to the session specified in the failed request is not expected. Recreating sessions with the same **createSession** request is not expected until the conflict is resolved. Recreating sessions with a different **createSession** request might or might not succeed. An end user can choose to manually perform the same operations with Excel Online to get more details about the conflict.
| **invalidSessionAuthentication**         | The session specified in the request is invalid due to an authentication error. Further access to the session specified in the failed request is not expected. Recreating sessions with the same **createSession** request is not expected until appropriate authentication information is provided.
| **invalidSessionNotFound**         | The session specified in the request is invalid because the workbook can’t be found. Further access to the session specified in the failed request is not expected. Recreating sessions with the same **createSession** request is not expected.
| **invalidSessionReCreatable**             | The session specified in the request does not exist or is invalid due to a transient error. The Microsoft Graph client can try to recreate a session and resume the work. Further access to the session specified in the failed request is not expected.
| **invalidSessionRestricted**          | The session specified in the request is invalid due to service configurations or restrictions. Further access to the session specified in the failed request is not expected. Recreating sessions with the same **createSession** request is not expected until the restrictions or configurations blocking the request changes. Recreating sessions with a different **createSession** request might or might not succeed. An end user can choose to manually perform the same operations with Excel Online to get more details of the restrictions.
| **invalidSessionUnexpected**                | The session specified in the request is invalid due to an unexpected issue. Further access to the session specified in the failed request is not expected. Recreating sessions with the same **createSession** request is not expected. Recreating sessions with a different **createSession** request might or might not succeed.
| **invalidSessionUnsupportedWorkbook**              | The session specified in the request is invalid because the workbook contains unsupported features or exceeds the size limit. Usually the unsupported factors are introduced by another client accessing the workbook. Further access to the session specified in the failed request is not expected. Recreating sessions with the same **createSession** request is not expected until the unsupported factors are removed. Recreating sessions with a different createSession request might or might not succeed. An end user can choose to manually perform the same operations with Excel Online to get more details of the unsupported factors, or with Excel Desktop where the workbook might be supported.
| **itemAlreadyExists**         | The resource being created already exists. The Microsoft Graph client is not expected to resend the failed request.
| **itemNotFound**         | The requested resource doesn't exist. The Microsoft Graph client is not expected to resend the failed request.
| **methodNotAllowed**         | The HTTP method specified in the request is not allowed on the resource. The Microsoft Graph client is not expected to resend the failed request.
| **methodNotAllowedUncategorized**              | The HTTP method specified in the request is not allowed on the resource. The Microsoft Graph client is not expected to resend the failed request.
| **nonBlankCellOffSheet**         | Can't insert new cells because it would push non-empty cells off the end of the worksheet. The Microsoft Graph client is not expected to resend the failed request.
| **notFoundUncategorized**             | The requested resource cannot be found. The Microsoft Graph client is not expected to resend the failed request.
| **notImplementedUncategorized**            | The requested feature is not currently implemented. The Microsoft Graph client is not expected to resend the failed request.
| **payloadTooLargeUncategorized**              | The request payload exceeds the size limit. The Microsoft Graph client is not expected to resend the failed request.
| **rangeExceedsLimit**         | The cell count in range has exceeded the maximum supported number. The Microsoft Graph client can try to send a request with smaller range size.
| **requestAborted**         | The request was aborted during run time, which was usually caused by long time calculation from functions in the workbook. The Microsoft Graph client is not expected to resend the failed request.
| **serviceUnavailableUncategorized**      | The service is temporarily unavailable or is overloaded. The Microsoft Graph client is not expected to resend the failed request until the specified cooldown duration passes.
| **tooManyRequestsUncategorized**             | The failed request exceeds certain frequency limitation. The Microsoft Graph client is not expected to resend the failed request until the specified cooldown duration passes.
| **transientFailure**           | The request failed due to a transient error. The Microsoft Graph client is not expected to resend the failed request until the specified cooldown duration passes.
| **unauthorizedUncategorized**         | Required authentication information for the resource is either missing or invalid. The Microsoft Graph client is not expected to resend the failed request.
| **unsupportedOperation**         | The operation being attempted is not supported. The Microsoft Graph client is not expected to resend the failed request.
| **unsupportedWorkbook**         | The request failed. The workbook contains unsupported features or exceeds the size limit. The Microsoft Graph client is not expected to resend the failed request until the unsupported factors are removed.

>**Note:** For the regular pattern, the failed request is defined as the request corresponding to the response. For the long-running operation pattern, the failed request is the one that triggers the failed operation.

### 3. Parse the top-level error code

If you can't find the second-level error code listed in the [Detailed error codes](workbook-error-codes.md#detailed-error-code) topic, we recommend that you follow the instructions provided for top-level errors. The top-level error codes are bound to the status code and you can take action according to the corresponding status codes. For details about top-level error codes and messages, see [Error codes](workbook-error-codes.md#error-code).

### 4. Parse the status code

If the error code you encounter is not in the second-level list or the top-level list, we recommend that you take action according to the HTTP status code.

### 5. Error recovery cooldown

For some of the responses in the regular pattern, a recovery cooldown duration in seconds might be provided via a `Retry-After` header. When a recovery cooldown duration is present, the Microsoft Graph client is not expected to send any followup requests before the specified duration passes.

## Special case handling

For [sessionful requests](excel-manage-sessions.md#request-types), if you encounter a `502/badGateway` or `503/serviceUnavailable` error, when a second-level error code is listed in [Detailed error codes](workbook-error-codes.md#detailed-error-code), parse the second-level code and follow the corresponding instructions; otherwise, we reconmmend that you recreate the session directly.
<!-- {
  "type": "#page.annotation",
  "description": "Error handling in Excel Graph.",
  "keywords": "error response, error object, error codes, innerError, error handling",
  "section": "documentation",
  "tocPath": ""
} -->
