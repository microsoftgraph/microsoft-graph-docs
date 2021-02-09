---
title: "Upload documents using the Microsoft Graph Universal Print API"
description: "Universal Print is a modern print solution that organizations can use to manage their print infrastructure through cloud services from Microsoft."
author: "nilakhan"
localization_priority: Priority
ms.prod: "universal-print"
ms.custom: scenarios:getting-started
---

# Upload documents using the Microsoft Graph Universal Print API

To print a document using the Universal Print API in Microsoft Graph, you [create a print job](/graph/api/printershare-post-jobs?view=graph-rest-beta), upload a document, and then [start the print job](/graph/api/printjob-start?view=graph-rest-beta). This article describes how to upload a document, which starts with [creating an upload session](/graph/api/printdocument-createuploadsession?view=graph-rest-beta).

To upload a file, or a portion of a file, your app makes a PUT request to the **uploadUrl** value received in the **createUploadSession** response.
You can upload the entire file, or split the file into multiple byte ranges, as long as the maximum bytes in any given request is less than 10 MB.

The segments of the file can be uploaded in any order and can be uploaded in parallel, with up to four concurrent requests. When all the binary segments of document are uploaded, the binary file is linked to the **printDocument**.

## HTTP request

Make a PUT request to the **uploadUrl** value received in the **createUploadSession** response.

### Request headers
| Name          | Description   |
|:--------------|:--------------|
| Content-Range | bytes {startByteIndex}-{endByteIndex}‬/{documentSizeInBytes}. Required.|
| Content-Length | {contentLength}‬ Required.|

### Request body
The request body is a binary blob containing the bytes of the document that are specified as an **inclusive** byte range in the `Content-Range` header. 

### Example

```http
PUT https://print.print.microsoft.com/uploadSessions/5400be13-5a4e-4c20-be70-90c85bfe5d6e?tempauthtoken={token}
Content-Range: bytes=0-72796/4533322
Content-Length: 72797

<bytes 0-72796 of the file>
```
### HTTP response

When the request is complete, the server will respond with `202 Accepted` if there are more byte ranges that need to be uploaded.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.uploadSession", "truncated": true } -->

```http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "expirationDateTime": "2020-10-25T02:19:38.1694207Z",
  "nextExpectedRanges": ["72797-4533321"]
}
```

Your app can use the **nextExpectedRanges** value to determine where to start the next byte range. You might see multiple ranges specified, indicating parts of the file that the server has not yet received. The **nextExpectedRanges** property indicates ranges of the file that have not been received and not a pattern for how your app should upload the file.

<!-- { "blockType": "ignored", "@odata.type": "microsoft.graph.uploadSession", "truncated": true } -->

```http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "expirationDateTime": "2020-10-25T02:19:38.1694207Z",
  "nextExpectedRanges": [
  "72797-72897",
  "78929-4533322"
  ]
}
```

### Remarks

* On failures when the client sent a fragment the server had already received, the server will respond with `HTTP 416 Requested Range Not Satisfiable`. 
  You can [request upload status](#get-the-upload-session) to get a more detailed list of missing ranges.
* Including the Authorization header when issuing the `PUT` call might result in a `HTTP 401 Unauthorized` response. The Authorization header and bearer token should only be sent when creating upload session. It should be not be included when uploading data to upload session.

## Completing a file

When the last byte range of a file is received, the server will response with an `HTTP 201 Created`. The response body will also include the property set for the associated **printDocument**.

<!-- { "blockType": "request", "opaqueUrl": true, "name": "upload-fragment-final", "scopes": "printjob.readwrite" } -->

```http
PUT https://print.print.microsoft.com/uploadSessions/5400be13-5a4e-4c20-be70-90c85bfe5d6e?tempauthtoken={token}
Content-Length: 10
Content-Range: bytes 4533312-4533321/4533322

<final bytes of the file>
```

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.printDocument", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
   "id": "9001bcd9-e36a-4f51-bfc6-140c3ad7f9f7",
   "documentName": "TestFile.pdf",
   "contentType": "application/pdf", 
   "size": 4533322
}
```

>**Note:** Upload session is deleted after document upload is complete.

## Get the upload session

To get upload session, send a GET request to the upload URL. 

### Request
<!-- { "blockType": "request", "opaqueUrl": true, "name": "upload-fragment-resume", "scopes": "files.readwrite" } -->

```http
GET https://print.print.microsoft.com/uploadSessions/5400be13-5a4e-4c20-be70-90c85bfe5d6e?tempauthtoken={token}
```

### Response

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "expirationDateTime": "2020-10-25T02:19:38.1694207Z",
  "nextExpectedRanges": [
  "72797-72897",
  "78929-4533322"
  ]
}
```

## Cancel the upload session

To cancel an upload session, send a DELETE request to the upload URL. This should be used in scenarios where the upload is aborted, for example, if the user cancels the transfer.

Temporary files and their accompanying upload session are automatically cleaned up after the **expirationDateTime** has passed.

### Request

<!-- { "blockType": "request", "opaqueUrl": true, "name": "upload-fragment-cancel", "scopes": "printjob.readwrite" } -->

```http
DELETE https://print.print.microsoft.com/uploadSessions/5400be13-5a4e-4c20-be70-90c85bfe5d6e?tempauthtoken={token}
```

### Response

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```
