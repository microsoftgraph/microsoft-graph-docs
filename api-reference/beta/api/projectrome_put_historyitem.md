# Create or replace a historyItem

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Create a new or replace an existing history item for an existing user activity.

## Prerequisites

The following **scope** is required to execute this API: *UserTimelineActivity.Write.CreatedByApp* 

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PUT /me/activities/{id}/historyItems/{id}
```

Id needs to be a GUID.

## Request headers

|Name | Type | Description|
|:----|:-----|:-----------|
|Authorization | string | Bearer {token}. Required.|

## Request body

In the request body, supply a JSON representation of a [historyItem](../resources/projectrome_historyitem.md) object.

## Response

If successful, this method returns the `201, Created` response code if the historyItem was created or `200, OK` if the historyItem was replaced.

## Example

##### Request

Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "upsert_historyItem"
}-->

```http
PUT https://graph.microsoft.com/beta/me/activities/13881113971988980728/historyItems/390e06e2-7e5b-4133-8014-fac7ac5991af
Content-type: json
Content-length: 364

{
    "startedDateTime": "2015-02-11T20:54:04.3457274+00:00",
    "userTimezone": "Africa/Casablanca",
    "lastActiveDateTime": "2015-02-11T20:54:04.3457274+00:00"
}
```

##### Response

Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.historyitem"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "status": 1,
    "userTimezone": "Africa/Casablanca",
    "createdDateTime": "2017-06-09T20:58:46.706Z",
    "lastModifiedDateTime": "2017-06-09T20:58:46.706Z",
    "id": "390e06e2-7e5b-4133-8014-fac7ac5991af",
    "startedDateTime": "2015-02-11T20:54:04.345Z",
    "lastActiveDateTime": "2015-02-11T20:54:04.345Z",
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Upsert historyitem",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->