# Get onPremisesPublishingProfile

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of [onPremisesPublishingProfile](../resources/onpremisespublishingprofile.md) object.

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
GET /onPremisesPublishingProfiles(publishingType)
```

## Optional query parameters

This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [onPremisesPublishingProfile](../resources/onpremisespublishingprofile.md) object in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_onpremisespublishingprofile"
}-->

```http
GET https://graph.microsoft.com/beta/onPremisesPublishingProfiles('provisioning')?$expand=publishedResources,agents,agentGroups
```

### Response

The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremisesPublishingProfile"
} -->

```json
HTTP/1.1 200 OK
{
    "publishedResources": [
        {
            "publishingType": "provisioning"
            "displayName": "Demo Provisioning"
            "id": "aed0b780-965f-4149-85c5-a8c73e58b67d",
            "resourceName": "domain1.contoso.com",
            "agentGroups": [
                {
                    "id": "2d55ed41-1619-4848-92bb-0576d3038682"
                    "displayName": "Group 1"
                }
            ]
        }
    ],
    "agents": [
        {
            "id": "1234b780-965f-4149-85c5-a8c73e58b67d",
            "status": "Active"
            "machineName": "server 1"
            "externalIp": "1.0.0.127"
            "agentGroups": [
                 {
                    "id": "2d55ed41-1619-4848-92bb-0576d3038682"
                    "displayName": "Group 1"
                 }
            ]
        }
    ],
    "agentGroups": [
        {
            "id": "2d55ed41-1619-4848-92bb-0576d3038682"
            "displayName": "Group 1"
            "publishingType": "provisioning"
            "isDefault": "false"
            "agents": [
                 {
                    "id": "1234b780-965f-4149-85c5-a8c73e58b67d"
                    "status": "Active"
                 }
            ],
            "publishedResources": [
                {
                    "displayName": "Demo Provisioning"
                    "id": "aed0b780-965f-4149-85c5-a8c73e58b67d",
                    "resourceName": "domain1.contoso.com"
                }
            ]
        }
    ],
    "hybridAgentUpdaterConfiguration" : {
       "deferUpdate" : "2018-08-12T12:00"
       "updateWindow" :
          {
            "updateWindowStartTime" : "0:00:00"
            "updateWindowEndTime" : "23:59:00"
          },
        "allowUpdateConfigurationOverride" : "false"
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get onPremisesPublishingProfile",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->