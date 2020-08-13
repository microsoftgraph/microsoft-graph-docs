---
title: "Error codes for Workbooks and charts APIs in Microsoft Graph"
description: "Lists and describes the error codes and messages for Workbooks and charts APIs in Microsoft Graph."
author: "grangeryy"
localization_priority: Normal
ms.prod: "excel"
---

# Error codes for Workbooks and charts APIs in Microsoft Graph

This article describes error codes that are returned by the Workbooks and charts APIs in Microsoft Graph when a request sent through the API fails. For more details about error responses and resource types in Microsoft Graph, see [Errors](/concepts/errors.md).

## Error code

The following table lists the current error codes and messages. The service might add new error codes at any time.

| Code                      | Message
|:--------------------------|:--------------
| **accessDenied**      | The caller doesn't have permission to perform the action.
| **conflict**          | The current state conflicts with what the request expects.
| **gatewayTimeout**        | The server, while acting as a proxy, did not receive a timely response from the upstream server in order to complete the request.
| **internalServerError**            | An internal server error occurred while processing the request.
| **invalidRequest**          | The request is malformed or incorrect.
| **methodNotAllowed**        |The HTTP method in the request is not allowed on the resource.
| **notImplemented**          | The requested feature isn’t implemented.
| **requestSizeExceeded**       | The request size exceeds the maximum limit.
| **resourceNotFound**          | The resource could not be found.
| **serviceUnavailable**      | The service is not available. Please try your request again.
| **tooManyRequests**     | The app or user has been throttled.
| **unauthenticated**  | The caller is not authenticated.

## Detailed error code
The following are some additional errors that your app might encounter within the first level of nested `innerError` objects. The service might add new error codes at any time.

| Code                               | Message
|:-----------------------------------|:----------------------------------------------------------
| **accessConflict**   |The request failed due to conflicts with other clients that are accessing the workbook.
| **accessDenied**         | You cannot perform the requested operation.
| **badRequestUncategorized**               | The request is malformed or incorrect.
| **conflictUncategorized**                   | The current state conflicts with what the request expects.
| **filteredRangeConflict**                   | The operation failed because it conflicts with a filtered range.
| **forbiddenUncategorized**                    | The request is not allowed.
| **gatewayTimeoutUncategorized**         | The service wasn’t able to complete the request within the time limit.
| **generalException**         | There was an internal error while processing the request.
| **insertDeleteConflict**         | The insert or delete operation attempted resulted in a conflict.
| **internalServerErrorUncategorized**       | An unspecified error has occurred.
| **invalidArgument**         | The argument is invalid or missing or has an incorrect format.
| **invalidReference**         | This reference is not valid for the current operation.
| **invalidSessionAccessConflict**             | The session specified in the request is invalid due to conflicts with other clients that are accessing the workbook.
| **invalidSessionAuthentication**         | The session specified in the request is invalid due to an authentication error.
| **invalidSessionNotFound**         | The session specified in the request is invalid because the workbook can’t be found.
| **invalidSessionReCreatable**             | The session specified in the request does not exist or is invalid due to a transient error.
| **invalidSessionRestricted**          | The session specified in the request is invalid due to service configurations or restrictions.
| **invalidSessionUnexpected**                | The session specified in the request is invalid due to an unexpected issue.
| **invalidSessionUnsupportedWorkbook**              | The session specified in the request is invalid because the workbook contains unsupported features or exceeds the size limit.
| **itemAlreadyExists**         | The resource being created already exists.
| **itemNotFound**         | The requested resource doesn't exist.
| **methodNotAllowed**              | The HTTP method specified in the request is not allowed on the resource.
| **methodNotAllowedUncategorized**              | The HTTP method specified in the request is not allowed on the resource.
| **nonBlankCellOffSheet**         | Can't insert new cells because it would push non-empty cells off the end of the worksheet.
| **notFoundUncategorized**             | The requested resource cannot be found.
| **notImplementedUncategorized**            | The requested feature is not currently implemented.
| **payloadTooLargeUncategorized**              | The request payload exceeds the size limit.
| **rangeExceedsLimit**         | The cell count in range has exceeded the maximum supported number.
| **requestAborted**         | The request was aborted during run time.
| **serviceUnavailableUncategorized**      | The service is temporarily unavailable or is overloaded. Please try your request again.
| **tooManyRequestsUncategorized**             | The client app or user has been throttled. Please try your request again.
| **transientFailure**           | The request failed due to a transient error. Please try your request again.
| **unauthorizedUncategorized**         | Required authentication information for the resource is either missing or invalid.
| **unsupportedOperation**         | The operation being attempted is not supported.
| **unsupportedWorkbook**         | The request failed. The workbook contains unsupported features or exceeds the size limit.

>**Note:** The **innerError** object might recursively contain more deeper **innerError** objects with additional, more specific error codes. These deeper **innerError** codes are intented for the developer to read.
<!-- {
  "type": "#page.annotation",
  "description": "Workbook error code and message",
  "keywords": "error response, error codes, innerError, message, code",
  "section": "documentation",
  "tocPath": ""
} -->
