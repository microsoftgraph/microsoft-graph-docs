---
title: "Upload documents using the Microsoft Graph Universal Print API"
description: "Universal Print is a modern print solution that organizations can use to manage their print infrastructure through cloud services from Microsoft."
author: "nilakhan"
localization_priority: Priority
ms.prod: "universal-print"
ms.custom: scenarios:getting-started
---

# Upload documents using the Microsoft Graph Universal Print API

[!INCLUDE [cloudprinting-pricing-disclaimer](../api-reference/includes/cloudprinting-pricing-disclaimer.md)]

To print a document using the Universal Print API in Microsoft Graph, you [create a print job](/graph/api/printershare-post-jobs), upload a document, and then [start the print job](/graph/api/printjob-start). This article describes how to upload a document, which starts with [creating an upload session](/graph/api/printdocument-createuploadsession).

To upload a file, or a portion of a file, your app makes a PUT request to the **uploadUrl** value received in the **createUploadSession** response.
You can upload the entire file, or split the file into multiple byte ranges, as long as the maximum bytes in any given request is less than 10 MB.

The segments of the file can be uploaded in any order and can be uploaded in parallel, with up to four concurrent requests. When all the binary segments of a document are uploaded, the binary file is linked to the **printDocument**.

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

Here, 0 and 72796 are the start and end indexes of the file segment and 4533322 is the size of document.
## HTTP response

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

* On failures, when the client sends a fragment the server has already received, the server will respond with `HTTP 416 Requested Range Not Satisfiable`. 
  You can [request upload status](#get-the-upload-session) to get a more detailed list of missing ranges.
* Including the `Authorizatio`n header when making the `PUT` call might result in an `HTTP 401 Unauthorized` response. The Authorization header and bearer token should only be sent when creating the upload session. It should be not be included when uploading data to the upload session.

## Completing a file

When the last byte range of a file is received, the server will respond with an `HTTP 201 Created`. The response body will also include the property set for the associated **printDocument**.

### Request
<!-- { "blockType": "request", "opaqueUrl": true, "name": "upload-fragment-final", "scopes": "printjob.readwrite" } -->
```http
PUT https://print.print.microsoft.com/uploadSessions/5400be13-5a4e-4c20-be70-90c85bfe5d6e?tempauthtoken={token}
Content-Length: 10
Content-Range: bytes 4533312-4533321/4533322

<final bytes of the file>
```

### Response
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

>**Note:** The upload session is deleted after the document upload is complete.

## Get the upload session

To get the upload session, send a GET request to the upload URL. 

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
## Code examples: Create upload session and upload documents
 
# [C#](#tab/csharp)

```csharp

            GraphServiceClient graphClient = new GraphServiceClient( authProvider );

            var properties = new PrintDocumentUploadProperties
            {
	            DocumentName = "TestFile.pdf",
	            ContentType = "application/pdf",
	            Size = 4533322
            };

            var uploadSession = await graphClient.Print.Printers["{printer-id}"].Jobs["{printJob-id}"].Documents["{printDocument-id}"]
            	.CreateUploadSession(properties)
	            .Request()
	            .PostAsync()

            // if using Graph SDK, maxSliceSize should in multiples of 320 KiB
            int maxSliceSize = 320 * 1024;
            var fileUploadTask =
                new LargeFileUploadTask<PrintDocument>(uploadSession, fileStream, maxSliceSize);

            // Create a callback that is invoked after each slice is uploaded
            IProgress<long> progress = new Progress<long>(prog =>
            {
                Console.WriteLine($"Uploaded {prog} bytes of {fileStream.Length} bytes");
            });

            // Upload the file

            var uploadResult = await fileUploadTask.UploadAsync(progress);
```

# [JavaScript](#tab/javascript)

```javascript

    const options = {
      authProvider,
    };
    const client = Client.init(options);
   
   const fileName = "test.txt";
    const file = fs.readFileSync(`./${fileName}`);
    const stats = fs.statSync(`./${fileName}`);
    const requestUrl ="https://graph.microsoft.com/v1.0/print/shares/{id}/jobs/{id}/documents/{id}/createuploadsession"
    const payload = {
        "properties": {
            "documentName": fileName,
            "contentType": "application/pdf",
            "size": stats.size
        }
    }
    const uploadSession = await LargeFileUploadTask.createUploadSession(client, requestUrl, payload);

    const fileObject = {
        content: file,
        name: fileName,
        size: stats.size
    };

    const task = new LargeFileUploadTask(client, fileObject, uploadSession);

    const uploadResponse = await task.upload();
```
---

## Cancel the upload session

To cancel an upload session, send a DELETE request to the upload URL. This should be used in scenarios where the upload is aborted; for example, if the user cancels the transfer.

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
