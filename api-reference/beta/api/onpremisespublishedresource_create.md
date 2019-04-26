# Create publishedResource

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new [publishedResource](../resources/onpremisespublishedresource.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | OnPremisesPublishingProfiles.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /onPremisesPublishingProfiles(publishingType)/publishedResources
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

In the request body, supply a JSON representation of [publishedResource](../resources/onpremisespublishedresource.md) object.

In the request body, supply the values for the properties below:

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String||
|resourceName|String||

## Response

If successful, this method returns `201, Created` response code and [publishedResource](../resources/onpremisespublishedresource.md) object in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_publishedresource_from_onpremisespublishingprofile"
}-->

```http
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles('provisioning')/publishedResources
{
    "displayName": "New provisioning"
    "resourceName": "domain1.contoso.com"
}
```

In the request body, supply a JSON representation of [publishedResource](../resources/onpremisespublishedresource.md) object.

### Response

The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.publishedResource"
} -->

```http
HTTP/1.1 201 Created
{
    "id": "4655ed41-1619-4848-92bb-0576d3038682"
    "publishingType": "provisioning"
    "displayName": "New provisionin"
    "resourceName": "domain1.contoso.com"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create publishedResource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->