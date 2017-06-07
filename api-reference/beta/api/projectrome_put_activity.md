# Create or replace an activity

Create a new or replace an existing user activity for your app.

## Prerequisites

Both **scopes** are required to execute this API: *UserTimelineActivity.Write.CreatedByApp* and *User.Read*

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PUT /me/activities/{base64 encoded activity.appActivityId}
```

## Request headers

|Name | Type | Description|
|-----|------|------------|
|Authorization | string | OAuth token, required.|

## Request body

In the request body, supply a JSON representation of an [activity](../resources/projectrome_activity.md) object.

## Response

If successful, this method returns `201, Created` response code if the activity was created or `200, OK` if the activity was replaced.

## Example

### Example Request

Here is an example of the request:

<!-- {
  "blockType": "request",
  "name": "upsert_activity"
}-->

```http
PUT https://graph.microsoft.com/beta/me/activites/{base64 encoded activity.appActivityId}
Content-type: json
Content-length: 364

{
    "appActivityId": "/narwhal_facts?12345",
    "activitySourceHost": "http://timelinetest.blob.core.windows.net/windowsappidentity",
    "userTimezone": "Africa/Casablanca",
    "appDisplayName": "My App",
    "activationUrl": "http://www.fakerssreader.com/article?id=12345",
    "contentUrl": "http://www.fakerssreader.com/article?id=12345",
    "fallbackUrl": "http://www.fakerssreader.com/article?id=12345",
    "contentInfo": {
        "@context": "http://schema.org",
        "@type": "Article",
        "author": "John Doe",
        "name": "How to Tie a Reef Knot"
    },
    "visualElements": {
        "attribution": {
            "iconUrl": "http://www.fakerssreader.com/article?id=12345",
            "alternativeText": "An icon representing an E",
            "addImageQuery": "false",
        },
        "description": "Lorem Ipsum",
        "backgroundColor": "Red",
        "displayText": "Lorem Ipsum",
        "content": {
            "@context": "http://schema.org",
            "@type": "Article",
            "author": "John Doe",
            "name": "How to Tie a Reef Knot"
        }
    }
}
```

### Example Response

Here is an example of the response:

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.activity"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json
Location: https://graph.microsoft.com/beta/me/activities/{activity.id}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Upsert activity",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->