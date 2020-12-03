---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/10/2017
title: Resumable file upload
localization_priority: Priority
ms.prod: "sharepoint"
description: "Create an upload session to allow your app to upload files up to the maximum file size."
doc_type: apiPageType
---
# Upload large files with an upload session

Namespace: microsoft.graph

Create an upload session to allow your app to upload files up to the maximum file size.
An upload session allows your app to upload ranges of the file in sequential API requests, which allows the transfer to be resumed if a connection is dropped while the upload is in progress.

To upload a file using an upload session, there are two steps:

1. [Create an upload session](#create-an-upload-session)
2. [Upload bytes to the upload session](#upload-bytes-to-the-upload-session)

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All    |
|Application | Sites.ReadWrite.All |

## Create an upload session

To begin a large file upload, your app must first request a new upload session.
This creates a temporary storage location where the bytes of the file will be saved until the complete file is uploaded.
Once the last byte of the file has been uploaded the upload session is completed and the final file is shown in the destination folder.
Alternatively, you can defer final creation of the file in the destination until you explicitly make a request to complete the upload, by setting the `deferCommit` property in the request arguments.

### HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /drives/{driveId}/items/{itemId}/createUploadSession
POST /groups/{groupId}/drive/items/{itemId}/createUploadSession
POST /me/drive/items/{itemId}/createUploadSession
POST /sites/{siteId}/drive/items/{itemId}/createUploadSession
POST /users/{userId}/drive/items/{itemId}/createUploadSession
```

### Request body

No request body is required.
However, you can specify properties in the request body providing additional data about the file being uploaded and customizing the semantics of the upload operation.

For example, the `item` property allows setting the following parameters:
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.driveItemUploadableProperties" } -->
```json
{
  "@microsoft.graph.conflictBehavior": "fail (default) | replace | rename",
  "description": "description",
  "fileSize": 1234,
  "name": "filename.txt"
}
```

The following example controls the behavior if the filename is already taken, and also specifies that the final file should not be created until an explicit completion request is made:

<!-- { "blockType": "ignored" } -->
```json
{
  "item": {
    "@microsoft.graph.conflictBehavior": "rename"
  },
  "deferCommit": true
}
```

### Optional request headers

| Name       | Value | Description                                                                                                                                                            |
|:-----------|:------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| *if-match* | etag  | If this request header is included and the eTag (or cTag) provided does not match the current etag on the item, a `412 Precondition Failed` error response is returned. |

## Parameters

| Parameter            | Type                          | Description
|:---------------------|:------------------------------|:---------------------------------
| item                 | [driveItemUploadableProperties](../resources/driveItemUploadableProperties.md) | Data about the file being uploaded
| deferCommit          | Boolean                       | If set to true, final creation of the file in the destination will require an explicit request. Only on OneDrive for Business.

### Request

The response to this request will provide the details of the newly created [uploadSession](../resources/uploadsession.md), which includes the URL used for uploading the parts of the file. 

<!-- { "blockType": "request", "name": "upload-fragment-create-session", "scopes": "files.readwrite", "target": "action" } -->

```http
POST /me/drive/root:/{item-path}:/createUploadSession
Content-Type: application/json

{
  "item": {
    "@odata.type": "microsoft.graph.driveItemUploadableProperties",
    "@microsoft.graph.conflictBehavior": "rename",
    "name": "largefile.dat"
  }
}
```

### Response

The response to this request, if successful, will provide the details for where the remainder of the requests should be sent as an [UploadSession](../resources/uploadsession.md) resource.

This resource provides details about where the byte range of the file should be uploaded and when the upload session expires.

If the `fileSize` parameter is specified and exceeds the available quota, a `507 Insufficent Storage` response will be returned and the upload session will not be created.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.uploadSession",
       "optionalProperties": [ "nextExpectedRanges" ]  } -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "uploadUrl": "https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF866337",
  "expirationDateTime": "2015-01-29T09:21:55.523Z"
}
```

## Upload bytes to the upload session

To upload the file, or a portion of the file, your app makes a PUT request to the **uploadUrl** value received in the **createUploadSession** response.
You can upload the entire file, or split the file into multiple byte ranges, as long as the maximum bytes in any given request is less than 60 MiB.

The fragments of the file must be uploaded sequentially in order.
Uploading fragments out of order will result in an error.

**Note:** If your app splits a file into multiple byte ranges, the size of each byte range **MUST** be a multiple of 320 KiB (327,680 bytes). 
Using a fragment size that does not divide evenly by 320 KiB will result in errors committing some files.

### Example

In this example, the app is uploading the first 26 bytes of a 128 byte file.

* The **Content-Length** header specifies the size of the current request.
* The **Content-Range** header indicates the range of bytes in the overall file that this request represents.
* The total length of the file is known before you can upload the first fragment of the file.

<!-- { "blockType": "request", "opaqueUrl": true, "name": "upload-fragment-piece", "scopes": "files.readwrite" } -->

```http
PUT https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF866337
Content-Length: 26
Content-Range: bytes 0-25/128

<bytes 0-25 of the file>
```

**Important:** Your app must ensure the total file size specified in the **Content-Range** header is the same for all requests.
If a byte range declares a different file size, the request will fail.

### Response

When the request is complete, the server will respond with `202 Accepted` if there are more byte ranges that need to be uploaded.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.uploadSession", "truncated": true } -->

```http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "expirationDateTime": "2015-01-29T09:21:55.523Z",
  "nextExpectedRanges": ["26-"]
}
```

Your app can use the **nextExpectedRanges** value to determine where to start the next byte range.
You may see multiple ranges specified, indicating parts of the file that the server has not yet received. 
This is useful if you need to resume a transfer that was interrupted and your client is unsure of the state on the service.

You should always determine the size of your byte ranges according to the best practices below. 
Do not assume that **nextExpectedRanges** will return ranges of proper size for a byte range to upload.
The **nextExpectedRanges** property indicates ranges of the file that have not been received and not a pattern for how your app should upload the file.

<!-- { "blockType": "ignored", "@odata.type": "microsoft.graph.uploadSession", "truncated": true } -->

```http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "expirationDateTime": "2015-01-29T09:21:55.523Z",
  "nextExpectedRanges": [
  "12345-55232",
  "77829-99375"
  ]
}
```

## Remarks

* The `nextExpectedRanges` property won't always list all of the missing ranges.
* On successful fragment writes, it will return the next range to start from (eg. "523-").
* On failures when the client sent a fragment the server had already received, the server will respond with `HTTP 416 Requested Range Not Satisfiable`. 
  You can [request upload status](#resuming-an-in-progress-upload) to get a more detailed list of missing ranges.
* Including the Authorization header when issuing the `PUT` call may result in a `HTTP 401 Unauthorized` response. The Authorization header and bearer token should only be sent when issuing the `POST` during the first step. It should be not be included when issueing the `PUT`.

## Completing a file

If `deferCommit` is false or unset, then the upload is automatically completed when the final byte range of the file is PUT to the upload URL.

If `deferCommit` is true, you can explicitly complete the upload in two ways:
- After the final byte range of the file is PUT to the upload URL, send a final POST request to the upload URL with zero-length content (currently only supported on OneDrive for Business and SharePoint).
- After the final byte range of the file is PUT to the upload URL, send a final PUT request in the same way that you would [handle upload errors](#handle-upload-errors) (currently only supported on OneDrive Personal).


When the upload is completed, the server will respond to the final request with an `HTTP 201 Created` or `HTTP 200 OK`.
The response body will also include the default property set for the **driveItem** representing the completed file.

<!-- { "blockType": "request", "opaqueUrl": true, "name": "upload-fragment-final", "scopes": "files.readwrite" } -->

```
PUT https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF866337
Content-Length: 21
Content-Range: bytes 101-127/128

<final bytes of the file>
```

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "912310013A123",
  "name": "largefile.vhd",
  "size": 128,
  "file": { }
}
```

<!-- { "blockType": "request", "opaqueUrl": true, "name": "commit-upload", "scopes": "files.readwrite" } -->

```
POST https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF866337
Content-Length: 0
```

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "912310013A123",
  "name": "largefile.vhd",
  "size": 128,
  "file": { }
}
```


## Handling upload conflicts

If a conflict occurs after the file is uploaded (for example, an item with the same name was created during the upload session), an error is returned when the last byte range is uploaded.

```http
HTTP/1.1 409 Conflict
Content-Type: application/json

{
  "error":
  {
    "code": "upload_name_conflict",
    "message": "Another file exists with the same name as the uploaded session. You can redirect the upload session to use a new filename by calling PUT with the new metadata and @microsoft.graph.sourceUrl attribute.",
  }
}
```

## Cancel the upload session

To cancel an upload session send a DELETE request to the upload URL.
This cleans up the temporary file holding the data previously uploaded.
This should be used in scenarios where the upload is aborted, for example, if the user cancels the transfer.

Temporary files and their accompanying upload session are automatically cleaned up after the **expirationDateTime** has passed.
Temporary files may not be deleted immedately after the expiration time has elapsed.

### Request

<!-- { "blockType": "request", "opaqueUrl": true, "name": "upload-fragment-cancel", "scopes": "files.readwrite" } -->

```http
DELETE https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF866337
```

### Response

The following example shows the response.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

## Resuming an in-progress upload

If an upload request is disconnected or fails before the request is completed, all bytes in that request are ignored.
This can occur if the connection between your app and the service is dropped.
If this occurs, your app can still resume the file transfer from the previously completed fragment.

To find out which byte ranges have been received previously, your app can request the status of an upload session.

### Example

Query the status of the upload by sending a GET request to the `uploadUrl`.

<!-- { "blockType": "request", "opaqueUrl": true, "name": "upload-fragment-resume", "scopes": "files.readwrite" } -->

```
GET https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF86633784148bb98a1zjcUhf7b0mpUadahs
```

The server will respond with a list of missing byte ranges that need to be uploaded and the expiration time for the upload session.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.uploadSession", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "expirationDateTime": "2015-01-29T09:21:55.523Z",
  "nextExpectedRanges": ["12345-"]
}
```

### Upload remaining data

Now that your app knows where to start the upload from, resume the upload by following the steps in [upload bytes to the upload session](#upload-bytes-to-the-upload-session).

## Handle upload errors

When the last byte range of a file is uploaded, it is possible for an error to occur. 
This can be due to a name conflict or quota limitation being exceeded.
The upload session will be preserved until the expiration time, which allows your app to recover the upload by explicitly committing the upload session.

To explicitly commit the upload session, your app must make a PUT request with a new **driveItem** resource that will be used when committing the upload session.
This new request should correct the source of error that generated the original upload error.

To indicate that your app is committing an existing upload session, the PUT request must include the `@microsoft.graph.sourceUrl` property with the value of your upload session URL.

<!-- { "blockType": "ignored", "name": "explicit-upload-commit", "scopes": "files.readwrite", "tags": "service.graph" } -->

```http
PUT /me/drive/root:/{path_to_parent}
Content-Type: application/json
If-Match: {etag or ctag}

{
  "name": "largefile.vhd",
  "@microsoft.graph.conflictBehavior": "rename",
  "@microsoft.graph.sourceUrl": "{upload session URL}"
}
```

**Note:** You can use the `@microsoft.graph.conflictBehavior` and `if-match` headers as expected in this call.

### Response

If the file can be committed using the new metadata, an `HTTP 201 Created` or `HTTP 200 OK` response will be returned with the Item metadata for the uploaded file.

<!-- { "blockType": "ignored", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "912310013A123",
  "name": "largefile.vhd",
  "size": 128,
  "file": { }
}
```

## Best practices

* Resume or retry uploads that fail due to connection interruptions or any 5xx errors, including:
  * `500 Internal Server Error`
  * `502 Bad Gateway`
  * `503 Service Unavailable`
  * `504 Gateway Timeout`
* Use an exponential back off strategy if any 5xx server errors are returned when resuming or retrying upload requests.
* For other errors, you should not use an exponential back off strategy but limit the number of retry attempts made.
* Handle `404 Not Found` errors when doing resumable uploads by starting the entire upload over. This indicates the upload session no longer exists.
* Use resumable file transfers for files larger than 10 MiB (10,485,760 bytes).
* A byte range size of 10 MiB for stable high speed connections is optimal. For slower or less reliable connections you may get better results from a smaller fragment size. The recommended fragment size is between 5-10 MiB.
* Use a byte range size that is a multiple of 320 KiB (327,680 bytes). Failing to use a fragment size that is a multiple of 320 KiB can result in large file transfers failing after the last byte range is uploaded.

## Error responses

See the [Error Responses][error-response] topic for details about
how errors are returned.

[error-response]: /graph/errors
[item-resource]: ../resources/driveitem.md

<!-- {
  "type": "#page.annotation",
  "description": "Upload large files using an upload session.",
  "keywords": "upload,large file,fragment,BITS",
  "suppressions": [
    "Warning: /api-reference/v1.0/api/driveitem-createuploadsession.md:
      Found potential enums in resource example that weren't defined in a table:(rename,fail,replace) are in resource, but () are in table"
  ],
  "section": "documentation"
} -->

