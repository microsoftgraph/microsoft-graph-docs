# Get classificationJobResponse

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties and relationships of classificationjobresponse object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.Read.All    |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Directory.Read.All  | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /dataClassification/jobs/<id>
```

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [classificationJobResponse](../resources/classificationjobresponse.md) object in the response body.

This method can return any of the [HTTP status codes](../../../concepts/errors.md). The most common errors that apps should handle for this method are 400 responses. 

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_classificationjobresponse"
}-->
```http
GET https://graph.microsoft.com/beta/dataClassification/jobs/3e074672-d35e-4604-8a30-29306b931da9
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.classificationJobResponse"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 509

{
	"@odata.context": "https://localhost/api/v1.0/dataClassification/$metadata#jobs/$entity",
	"@odata.type": "#microsoft.dataClassificationService.contract.classificationJobResponse",
	"id": "3e074672-d35e-4604-8a30-29306b931da9",
	"type": "ClassifyText",
	"status": "Completed",
	"tenantId": "ed1449d2-ef73-452a-83f5-3fc6fa90caf8",
	"creationDateTime": "2018-01-29T14:24:39.8639303-08:00",
	"startDateTime": "2018-01-29T14:25:23.9458436-08:00",
	"endDateTime": "2018-01-29T14:25:24.871549-08:00",
	"errors": [],
	"result": {
		"classification": [{
				"id": "a44669fe-0d48-453d-a9b1-2cc83f2cba77",
				"displayName": "U.S. Social Security Number (SSN)",
				"uniqueCount": 1,
				"confidence": 85,
				"matches": [{
						"idMatch": "123-12-1234",
						"offset": 16,
						"length": 11,
						"evidences": [{
								"match": "SSN",
								"offset": 11,
								"length": 3
							}
						]
					}
				]
			}
		]
	}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get classificationJobResponse",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->