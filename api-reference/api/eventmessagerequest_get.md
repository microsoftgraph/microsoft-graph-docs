# Get eventMessageRequest

Retrieve the properties and relationships of eventmessagerequest object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http

```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [eventMessageRequest](../resources/eventmessagerequest.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_eventmessagerequest"
}-->
```http

```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.eventmessagerequest"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1027

{
  "previousLocation": {
    "displayName": "displayName-value",
    "locationEmailAddress": "locationEmailAddress-value",
    "address": {
      "type": "type-value",
      "postOfficeBox": "postOfficeBox-value",
      "street": "street-value",
      "city": "city-value",
      "state": "state-value",
      "countryOrRegion": "countryOrRegion-value",
      "postalCode": "postalCode-value"
    },
    "coordinates": {
      "altitude": 99,
      "latitude": 99,
      "longitude": 99,
      "accuracy": 99,
      "altitudeAccuracy": 99
    },
    "locationUri": "locationUri-value"
  },
  "previousStartDateTime": {
    "dateTime": "dateTime-value",
    "timeZone": "timeZone-value"
  },
  "previousEndDateTime": {
    "dateTime": "dateTime-value",
    "timeZone": "timeZone-value"
  },
  "meetingMessageType": "meetingMessageType-value",
  "startDateTime": {
    "dateTime": "dateTime-value",
    "timeZone": "timeZone-value"
  },
  "endDateTime": {
    "dateTime": "dateTime-value",
    "timeZone": "timeZone-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get eventMessageRequest",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->