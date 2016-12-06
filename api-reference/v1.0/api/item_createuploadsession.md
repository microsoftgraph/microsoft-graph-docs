# Upload large files with an upload session

Create an upload session to allow your app to upload files up to the maximum file size.
An upload session allows your app to upload ranges of the file in sequental API requests, which allows the transfer to be resumed if a connection is dropped while the upload is in progress.

To upload a file using an upload session, there are two steps:

1. [Create an upload session](#create-an-upload-session)
2. [Upload bytes to the upload session](#upload-bytes-to-the-upload-session)

## Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.ReadWrite

## Create an upload session

To begin a large file upload, your app must first request a new upload session.
This creates a temporary storage location where the bytes of the file will be saved until the complete file is uploaded.
Once the last byte of the file has been uploaded the upload session is completed and the final file is shown in the destination folder.

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/drive/root:/{path-to-item}:/createUploadSession
POST /me/drive/items/{parent-item-id}:/{filename}:/createUploadSession
```

### Request body
No request body is required. 
However, you can specify a request body to provide additional data about the file being uploaded.

For example, to control the behavior if the filename is already taken, you can specify the conflict behavior property in the body of the request.

```json
{
    "item": {
        "@microsoft.graph.conflictBehavior": "rename"
    }
}
```

### Optional request headers

| Name       | Value | Description                                                                                                                                                            |
|:-----------|:------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| *if-match* | etag  | If this request header is included and the eTag (or cTag) provided does not match the current etag on the item, a `412 Precondition Failed` errr response is returned. |


### Response
The response to this request will provide the details of the newly created [uploadSession](../resources/uploadsession.md), which includes the URL used for uploading the parts of the file. 

### Example

<!-- {
  "blockType": "request",
  "name": "driveItem_createUploadSession"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/drive/root:/{item-path}:/createUploadSession
```

### Response
Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.uploadSession"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "uploadUrl": "https://tenant-my.sharepoint.com/alkjl1kjklna",
  "expirationDateTime": "2020-08-24T10:58:00Z",
  "nextExpectedRanges": ["0-"]
}
```

## Upload bytes to the upload session

To upload the file, or a portion of the file, your app makes a PUT request to the **uploadUrl** value received in the **createUploadSession** response.
You can upload the entire file, or split the file into fragments, as long as the maximum bytes in any given request is less than 60 MiB.
The fragments of the file must be uploaded sequentally in order.
Uploading fragments out of order will result in an error.

**Note:** If your app splits a file into multiple fragments, the size of each fragment **MUST** be a multiple of 320 KiB. 
Using a fragment size that does not divide evenly by 320 will result in errors committing some files.

### Example

This example is uploading the first 26 bytes of a 128 byte file.
The **Content-Length** header specifies the size of the current request.
The **Content-Range** header indicates the range of bytes in the overall file that this request represents.
The total length of the file must be known before you can upload the first fragment of the file.

<!-- { "blockType": "request", "name": "upload-fragment-piece", "scopes": "files.readwrite" } -->
```
PUT https://tenant-my.sharepoint.com/alkjl1kjklna
Content-Length: 26
Content-Range: bytes 0-25/128

<bytes 0-25 of the file>
```

**Important:** Your app must ensure the total file size specified in the **Content-Range** header is the same for all requests.
If a fragment declares a different file size, the request will fail.

### Response
<!-- { "blockType": "response", "@odata.type": "microsoft.graph.uploadSession", "truncated": true } -->
```http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "expirationDateTime": "2015-01-29T09:21:55.523Z",
  "nextExpectedRanges": ["26-"]
}
```

Your app can use the **nextExpectedRanges** value to determine where to start the next fragment.
You may see multiple ranges specified, indicating parts of the file that the server has not yet received. 
This is useful if you need to resume a transfer that was interrupted and your client is unsure of the state on the service.

You should always determine the fragment size according to the best practices below. 
Do not assume that **nextExpectedRanges** will return reanges of proper size for an upload fragment. 
The **nextExpectedRanges** property indicates ranges of the file that have not been received and not a pattern for how you should upload the file.

**Notes:**

* The `nextExpectedRanges` property won't always list all of the missing ranges.
* On successful fragment writes, it will return the next range to start from (eg. "523-").
* On failures when the client sent a fragment the server had already received, the server will respond with `HTTP 416 Requested Range Not Satisfiable`. 
  You can [request upload status](#resuming-an-in-progress-upload) to get a more detailed list of missing ranges.
* Including the Authorization header when issuing the `PUT` call may result in a `HTTP 401 Unauthoized` response. The Authoization header and bearer token should only be sent when issueing the `POST` during the first step. It should be not be included when issueing the `PUT`.   


## Completing a file

When the last fragment of a file is received the server will response with an `HTTP 201 Created` or `HTTP 200 OK`.
The response body will also include the default property set for the **driveItem** representing the completed file.

<!-- { "blockType": "request", "name": "upload-fragment-final", "scopes": "files.readwrite" } -->
```
PUT https://tenant-my.sharepoint.com/alkjl1kjklna
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
**Note:** The item response is truncated for documentation clarity.

## Cancel an upload session

To cancel an upload session send a DELETE request to the upload URL.
This cleans up the temporary file holding the data previously uploaded.
This should be used in scenarios where the upload is aborted, for example, if the user cancels the transfer.

Temporary files and their accompanying upload session are automatically cleaned up after the **expirationDateTime** has passed.

### Example

The DELETE request will immedately expire the upload session and remove any previously uploaded bytes.

<!-- { "blockType": "request", "name": "upload-fragment-cancel", "scopes": "files.readwrite" } -->
```http
DELETE https://tenant-my.sharepoint.com/alkjl1kjklna
```

### Response

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

<!-- { "blockType": "request", "name": "upload-fragment-resume", "scopes": "files.readwrite" } -->
```
GET https://tenant-my.sharepoint.com/alkjl1kjklna
```

The server will respond with a list of missing byte ranges that need to be uploaded and the expiration time for the upload session.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.uploadSession", "truncated": true } -->
```http
HTTP/1.1 200 OK

{
  "expirationDateTime": "2015-01-29T09:21:55.523Z",
  "nextExpectedRanges": ["12345-"]
}
```

### Upload remaining data
Now that your app knows where to start the upload from, resume the upload by following the steps in [upload bytes to the upload session](#upload-bytes-to-the-upload-session).


## Best practices

* Resume or retry uploads that fail due to connection interruptions or any 5xx errors, including:
  * `500 Internal Server Error`
  * `502 Bad Gateway`
  * `503 Service Unavailable`
  * `504 Gateway Timeout`
* Use an exponential back off strategy if any 5xx server errors are returned when resuming or retrying upload requests.
* For other errors, you should not use an exponential back off strategy but limit the number of retry attempts made.
* Handle `404 Not Found` errors when doing resumable uploads by starting the entire upload over.
* Use resumable file transfers for files larger than 10 MiB (10 \* 1024 \* 1024 bytes).
* A fragment size of 10 MiB for stable high speed connections is optimal. 
  For slower or less reliable connections you may get better results from a smaller fragment size. 
  The recommended fragment size is between 5-10 MiB.
* Use a fragment size that is a multiple of 320 KiB (320 \* 1024 bytes). 
  Failing to use a fragment size that is a multiple of 320 KiB can result in large file transfers failing after the last fragment is uploaded.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Upload item",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
