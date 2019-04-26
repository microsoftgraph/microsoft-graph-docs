# Assign onPremisesAgent to onPremisesAgentGroup

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to assign [onPremisesAgent](../resources/onpremisesagent.md) to [onPremisesAgentGroup](../resources/onpremisesagentgroup.md) object.

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
POST /onPremisesPublishingProfiles(publishingType)/agents(id1)/agentGroups/$ref
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

In the request body, supply a JSON representation of OData reference to [onPremisesAgentGroup](../resources/onpremisesagentgroup.md) object.

## Response

If successful, this method returns `201, Created` response code and [onPremisesAgentGroup](../resources/onpremisesagentgroup.md) object in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_onpremisesagentgroup_from_onpremisesagent"
}-->

```http
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles('provisioning')/agents(id1)/agentGroups/$ref
```

In the request body, supply a JSON representation of OData reference to [onPremisesAgentGroup](../resources/onpremisesagentgroup.md) object.

```http
{
  "@odata.id": "https://graph.microsoft.com/beta/onPremisesPublishingProfiles('provisioning')/agentGroups(id2)/"
}
```

### Response

The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremisesAgentGroup"
} -->

```http
HTTP/1.1 204
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create onPremisesAgentGroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->