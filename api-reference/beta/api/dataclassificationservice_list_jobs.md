# List jobs

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve a list of **jobresponsebase** objects.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.Read.All   |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Directory.Read.All | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /dataClassification/jobs
```
## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [jobResponseBase](../resources/jobresponsebase.md) objects in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_jobs"
}-->
```http
GET https://graph.microsoft.com/beta/dataClassification/jobs
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.jobResponseBase",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 236

{
  "value": [
    {
      "id": "0497d14f-d14a-4adc-b559-2d1a621cf57d",
      "type": "ClassifyFile",
      "status": "Completed",
      "tenantId": "ed1449d2-ef73-452a-83f5-3fc6fa90caf8",
      "creationDateTime": "2018-01-18T11:35:35.4951094-08:00",
      "startDateTime": "2018-01-18T11:35:35.9948357-08:00",
      "endDateTime": "2018-01-18T11:35:36.8115362-08:00",
      "errors": [],
      "result": null
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List jobs",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->