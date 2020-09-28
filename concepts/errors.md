---
title: "Microsoft Graph error responses and resource types"
description: "This topic describes some of the errors that can be returned in Microsoft Graph responses."
localization_priority: Priority
---

# Microsoft Graph error responses and resource types

Errors in Microsoft Graph are returned using standard HTTP status codes, as well as a JSON error response object.

## HTTP status codes

The following table lists and describes the HTTP status codes that can be returned.

| Status code | Status message                  | Description                                                                                                                            |
|:------------|:--------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------|
| 400         | Bad Request                     | Cannot process the request because it is malformed or incorrect.                                                                       |
| 401         | Unauthorized                    | Required authentication information is either missing or not valid for the resource.                                                   |
| 403         | Forbidden                       | Access is denied to the requested resource. The user might not have enough permission. <br /><br /> **Important:** If conditional access policies are applied to a resource, a HTTP 403; Forbidden error=insufficent_claims may be returned. For more details on Microsoft Graph and conditional access see [Developer Guidance for Azure Active Directory Conditional Access](/azure/active-directory/develop/active-directory-conditional-access-developer)  |
| 404         | Not Found                       | The requested resource doesn’t exist.                                                                                                  |
| 405         | Method Not Allowed              | The HTTP method in the request is not allowed on the resource.                                                                         |
| 406         | Not Acceptable                  | This service doesn’t support the format requested in the Accept header.                                                                |
| 409         | Conflict                        | The current state conflicts with what the request expects. For example, the specified parent folder might not exist.                   |
| 410         | Gone                            | The requested resource is no longer available at the server.                                               |
| 411         | Length Required                 | A Content-Length header is required on the request.                                                                                    |
| 412         | Precondition Failed             | A precondition provided in the request (such as an if-match header) does not match the resource's current state.                       |
| 413         | Request Entity Too Large        | The request size exceeds the maximum limit.                                                                                            |
| 415         | Unsupported Media Type          | The content type of the request is a format that is not supported by the service.                                                      |
| 416         | Requested Range Not Satisfiable | The specified byte range is invalid or unavailable.                                                                                    |
| 422         | Unprocessable Entity            | Cannot process the request because it is semantically incorrect.                                                                        |
| 423         | Locked                          | The resource that is being accessed is locked.                                                                                          |
| 429         | Too Many Requests               | Client application has been throttled and should not attempt to repeat the request until an amount of time has elapsed.                |
| 500         | Internal Server Error           | There was an internal server error while processing the request.                                                                       |
| 501         | Not Implemented                 | The requested feature isn’t implemented.                                                                                               |
| 503         | Service Unavailable             | The service is temporarily unavailable for maintenance or is overloaded. You may repeat the request after a delay, the length of which may be specified in a Retry-After header.|
| 504         | Gateway Timeout                 | The server, while acting as a proxy, did not receive a timely response from the upstream server it needed to access in attempting to complete the request. May occur together with 503. |
| 507         | Insufficient Storage            | The maximum storage quota has been reached.                                                                                            |
| 509         | Bandwidth Limit Exceeded        | Your app has been throttled for exceeding the maximum bandwidth cap. Your app can retry the request again after more time has elapsed. |

The error response is a single JSON object that contains a single property
named **error**. This object includes all the details of the error. You can use the information returned here instead of or in addition to the HTTP status code. The following is an example of a full JSON error body.

<!-- { "blockType": "ignored", "@odata.type": "odata.error", "expectError": true, "name": "example-error-response" } -->
```json
{
  "error": {
    "code": "invalidRange",
    "message": "Uploaded fragment overlaps with existing data.",
    "innerError": {
      "requestId": "request-id",
      "date": "date-time"
    }
  }
}
```

<!--<a name="msg_error_resource_type"> </a> -->

## Error resource type

The error resource is returned whenever an error occurs in the processing of a request.

Error responses follow the definition in the
[OData v4](https://docs.oasis-open.org/odata/odata-json-format/v4.0/os/odata-json-format-v4.0-os.html#_Toc372793091)
specification for error responses.

### JSON representation

The error resource is composed of these resources:

<!-- { "blockType": "resource", "@odata.type": "odata.error" } -->
```json
{
  "error": { "@odata.type": "odata.error" }  
}
```

#### odata.error resource type

Inside the error response is an error resource that includes the following
properties:

<!-- { "blockType": "resource", "@odata.type": "odata.error", "optionalProperties": [ "target", "details", "innererror"] } -->
```json
{
  "code": "string",
  "message": "string",
  "innererror": { "@odata.type": "odata.error" }
}
```

| Property name  | Value                  | Description\                                                                                               |
|:---------------|:-----------------------|:-----------------------------------------------------------------------------------------------------------|
| **code**       | string                 | An error code string for the error that occurred                                                            |
| **message**    | string                 | A developer ready message about the error that occurred. This should not be displayed to the user directly. |
| **innererror** | error object           | Optional. Additional error objects that may be more specific than the top level error.                     |

<!--<a name="msg_code_property"> </a> -->

#### Code property

The `code` property contains one of the following possible values. Your apps should be
prepared to handle any one of these errors.

| Code                      | Description
|:--------------------------|:--------------
| **accessDenied**          | The caller doesn't have permission to perform the action. 
| **activityLimitReached**  | The app or user has been throttled.
| **extensionError**        | The mailbox is located on premises and the Exchange server does not support federated Microsoft Graph requests, or an [application policy](./auth-limit-mailbox-access.md) prevents the application from accessing the mailbox.
| **generalException**      | An unspecified error has occurred.
| **invalidRange**          | The specified byte range is invalid or unavailable.
| **invalidRequest**        | The request is malformed or incorrect.
| **itemNotFound**          | The resource could not be found.
| **malwareDetected**       | Malware was detected in the requested resource.
| **nameAlreadyExists**     | The specified item name already exists.
| **notAllowed**            | The action is not allowed by the system.
| **notSupported**          | The request is not supported by the system.
| **resourceModified**      | The resource being updated has changed since the caller last read it, usually an eTag mismatch.
| **resyncRequired**        | The delta token is no longer valid, and the app must reset the sync state.
| **serviceNotAvailable**   | The service is not available. Try the request again after a delay. There may be a Retry-After header. 
| **syncStateNotFound**     | The sync state generation is not found. The delta token is expired and data must be synchronized again. 
| **quotaLimitReached**     | The user has reached their quota limit.
| **unauthenticated**       | The caller is not authenticated.

The `innererror` object might recursively contain more `innererror` objects
with additional, more specific error codes. When handling an error, apps
should loop through all the error codes available and use the most detailed
one that they understand. Some of the more detailed codes are listed at the
bottom of this page.

To verify that an error object is an error you are expecting, you must loop
over the `innererror` objects, looking for the error codes you expect. For example:

```csharp
public bool IsError(string expectedErrorCode)
{
    OneDriveInnerError errorCode = this.Error;
    while (null != errorCode)
    {
        if (errorCode.Code == expectedErrorCode)
            return true;
        errorCode = errorCode.InnerError;
    }
    return false;
}
```

For an example that shows how to properly handle errors, see
[Error Code Handling](https://gist.github.com/rgregg/a1866be15e685983b441).

The `message` property at the root contains an error message intended for the
developer to read. Error messages are not localized and shouldn't be displayed
directly to the user. When handling errors, your code should not key off of
`message` values because they can change at any time, and they often contain
dynamic information specific to the failed request. You should only code
against error codes returned in `code` properties.

#### Detailed error codes
The following are some additional errors that your app might encounter within the nested
`innererror` objects. Apps are not required to handle these, but can if they
choose. The service might add new error codes or stop returning old ones at any
time, so it is important that all apps be able to handle the [basic error codes](#code-property).

| Code                               | Description
|:-----------------------------------|:----------------------------------------------------------
| **accessRestricted**               | Access restricted to the item's owner.
| **cannotSnapshotTree**             | Failed to get a consistent delta snapshot. Try again later.
| **childItemCountExceeded**         | Max limit on the number of child items was reached.
| **entityTagDoesNotMatch**          | ETag does not match the current item's value.
| **fragmentLengthMismatch**         | Declared total size for this fragment is different from that of the upload session.
| **fragmentOutOfOrder**             | Uploaded fragment is out of order.
| **fragmentOverlap**                | Uploaded fragment overlaps with existing data.
| **invalidAcceptType**              | Invalid accept type.
| **invalidParameterFormat**         | Invalid parameter format.
| **invalidPath**                    | Name contains invalid characters.
| **invalidQueryOption**             | Invalid query option.
| **invalidStartIndex**              | Invalid start index.
| **lockMismatch**                   | Lock token does not match existing lock.
| **lockNotFoundOrAlreadyExpired**   | There is currently no unexpired lock on the item.
| **lockOwnerMismatch**              | Lock Owner ID does not match provided ID.
| **malformedEntityTag**             | ETag header is malformed. ETags must be quoted strings.
| **maxDocumentCountExceeded**       | Max limit on number of Documents is reached.
| **maxFileSizeExceeded**            | Max file size exceeded.
| **maxFolderCountExceeded**         | Max limit on number of Folders is reached.
| **maxFragmentLengthExceeded**      | Max file size exceeded.
| **maxItemCountExceeded**           | Max limit on number of Items is reached.
| **maxQueryLengthExceeded**         | Max query length exceeded.
| **maxStreamSizeExceeded**          | Maximum stream size exceeded.
| **parameterIsTooLong**             | Parameter Exceeds Maximum Length.
| **parameterIsTooSmall**            | Parameter is smaller then minimum value.
| **pathIsTooLong**                  | Path exceeds maximum length.
| **pathTooDeep**                    | Folder hierarchy depth limit reached.
| **propertyNotUpdateable**          | Property not updateable.
| **resyncApplyDifferences**         | Resync required. Replace any local items with the server's version (including deletes) if you're sure that the service was up to date with your local changes when you last sync'd. Upload any local changes that the server doesn't know about.
| **resyncRequired**                 | Resync is required.
| **resyncUploadDifferences**        | Resync required. Upload any local items that the service did not return, and upload any files that differ from the server's version (keeping both copies if you're not sure which one is more up-to-date).
| **serviceNotAvailable**            | The server is unable to process the current request.
| **serviceReadOnly**                | Resource is temporarily read-only.
| **throttledRequest**               | Too many requests.
| **tooManyResultsRequested**        | Too many results requested.
| **tooManyTermsInQuery**            | Too many terms in the query.
| **totalAffectedItemCountExceeded** | Operation is not allowed because the number of affected items exceeds threshold.
| **truncationNotAllowed**           | Data truncation is not allowed.
| **uploadSessionFailed**            | Upload session failed.
| **uploadSessionIncomplete**        | Upload session incomplete.
| **uploadSessionNotFound**          | Upload session not found.
| **virusSuspicious**                | This document is suspicious and may have a virus.
| **zeroOrFewerResultsRequested**    | Zero or fewer results requested.


<!-- {
  "type": "#page.annotation",
  "description": "Understand the error format for the API and error codes.",
  "keywords": "error response, error, error codes, innererror, message, code",
  "section": "documentation",
  "suppressions": [
    " Warning: /concepts/errors.md:
      Multiple resources found in file, but we only support one per file. 'odata.error,odata.error'. Skipping."
  ],
  "tocPath": "Misc/Error Responses"
} -->