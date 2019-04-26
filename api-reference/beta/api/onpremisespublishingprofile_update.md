# Update onPremisesPublishingProfile

Update the properties of [onPremisesPublishingProfile](../resources/onpremisespublishingprofile.md) object.

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
PATCH /onPremisesPublishingProfiles(publishingType)/hybridAgentUpdaterConfiguration
```

## Optional request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {code} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hybridAgentUpdaterConfiguration|hybridAgentUpdaterConfiguration||

## Response

If successful, this method returns a `204 No Content` response code.

## Example 1

Update updateWindow in the hybridAgentUpdaterConfiguration

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_onpremisespublishingprofile"
}-->

```http
PATCH https://graph.microsoft.com/beta/onPremisesPublishingProfiles('provisioning')/hybridAgentUpdaterConfiguration
{
   "updateWindow" :
    {
      "updateWindowStartTime" : "0:00:00"
      "updateWindowEndTime" : "23:59:00"
    }
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremisesPublishingProfile"
} -->

```http
HTTP/1.1 204
```

## Example 2

Update deferUpdate in the hybridAgentUpdaterConfiguration 

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_onpremisespublishingprofile"
}-->

```http
PATCH https://graph.microsoft.com/beta/onPremisesPublishingProfiles('provisioning')/hybridAgentUpdaterConfiguration
{
    "deferUpdate" : "2018-08-20T12:00"
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremisesPublishingProfile"
} -->

```http
HTTP/1.1 204
```

## Example 3

Update allowUpdateConfigurationOverride in the hybridAgentUpdaterConfiguration

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_onpremisespublishingprofile"
}-->

```http
PATCH https://graph.microsoft.com/beta/onPremisesPublishingProfiles('provisioning')/hybridAgentUpdaterConfiguration
{
    "allowUpdateConfigurationOverride" : "false"
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremisesPublishingProfile"
} -->

```http
HTTP/1.1 204
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update onpremisespublishingprofile",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->