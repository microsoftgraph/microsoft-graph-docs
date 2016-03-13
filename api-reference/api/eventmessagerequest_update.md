# Update eventmessagerequest

Update the properties of eventmessagerequest object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http

```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bccRecipients|recipient||
|body|itemBody||
|bodyPreview|string||
|categories|string||
|ccRecipients|recipient||
|changeKey|string||
|conversationId|string||
|conversationIndex|binary||
|createdDateTime|dateTimeOffset||
|endDateTime|dateTimeTimeZone||
|flag|followupFlag||
|from|recipient||
|hasAttachments|boolean||
|importance|string| Possible values are: `low`, `normal`, `high`.|
|inferenceClassification|string| Possible values are: `focused`, `other`.|
|internetMessageId|string||
|isDeliveryReceiptRequested|boolean||
|isDraft|boolean||
|isOutOfDate|boolean||
|isRead|boolean||
|isReadReceiptRequested|boolean||
|lastModifiedDateTime|dateTimeOffset||
|location|location||
|meetingMessageType|string| Possible values are: `none`, `meetingRequest`, `meetingCancelled`, `meetingAccepted`, `meetingTentativelyAccepted`, `meetingDeclined`.|
|parentFolderId|string||
|previousEndDateTime|dateTimeTimeZone||
|previousLocation|location||
|previousStartDateTime|dateTimeTimeZone||
|receivedDateTime|dateTimeOffset||
|recurrence|patternedRecurrence||
|replyTo|recipient||
|sender|recipient||
|sentDateTime|dateTimeOffset||
|startDateTime|dateTimeTimeZone||
|subject|string||
|toRecipients|recipient||
|type|string| Possible values are: `singleInstance`, `occurrence`, `exception`, `seriesMaster`.|
|uniqueBody|itemBody||
|unsubscribeData|string||
|unsubscribeEnabled|boolean||
|webLink|string||

### Response
If successful, this method returns a `200 OK` response code and updated [eventMessageRequest](../resources/eventmessagerequest.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_eventmessagerequest"
}-->
```http

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
  "description": "Update eventmessagerequest",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->