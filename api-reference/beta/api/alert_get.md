# Get alert

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties and relationships of an [alert](../resources/alert.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  SecurityEvents.Read.All, SecurityEvents.ReadWrite.All   |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | SecurityEvents.Read.All, SecurityEvents.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/alerts/{id}
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an **alert** object in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_alert"
}-->

```http
GET https://graph.microsoft.com/beta/security/alerts/{id}
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.alert"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "activityGroupStates": [
    {
      "aliases": [
        "aliases-value"
      ],
      "name": "name-value"
    }
  ],
  "applicationStates": [
    {
      "deploymentPackageUrl": "deploymentPackageUrl-value",
      "name": "name-value",
      "permissionsRequired": "permissionsRequired-value",
      "publisher": "publisher-value",
      "riskScore": "riskScore-value"
    }
  ],
  "assignedTo": "assignedTo-value",
  "azureSubscriptionId": "azureSubscriptionId-value",
  "azureTenantId": "String",
  "category": "category-value",
  "closedDateTime": "String (timestamp)",
  "comments": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "detectionIds": ["String"],
  "eventDateTime": "String (timestamp)",
  "feedback": "String",
  "fileStates": [
    {
      "authenticodeHash256": "String",
      "name": "String",
      "path": "String",
      "riskScore": "String",
      "sha256": "String"
    }
  ],
  "hostStates": [
    {
      "fqdn": "String",
      "isAzureAadJoined": true,
      "isAzureAadRegistered": true,
      "isHybridAzureDomainJoined": true,
      "netBiosName": "String",
      "privateIpAddress": "String",
      "publicIpAddress": "String",
      "riskScore": "String"
    }
  ],
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "malwareStates": [
    {
      "aliases": ["String"],
      "name": "String",
      "severity": "String"
    }
  ],
  "malwareWasRunning": true,
  "networkConnections": [
    {
      "destinationAddress": "String",
      "destinationPort": "String",
      "protocol": "String",
      "sourceAddress": "String",
      "sourcePort": "String",
      "uri": "String"
    }
  ],
  "processes": [
    {
      "accountName": "String",
      "authenticodeHash256": "String",
      "commandLine": "String",
      "createdDateTime": "String (timestamp)",
      "integrityLevel": "String",
      "isElevated": true,
      "name": "String",
      "parentProcessCreatedDateTime": "String (timestamp)",
      "parentProcessId": 1024,
      "parentProcessName": "String",
      "path": "String",
      "processId": 1024,
      "sha256": "String"
    }
  ],
  "recommendedActions": ["String"],
  "riskScore": "String",
  "severity": "String",
  "sourceMaterials": ["String"],
  "status": "string",
  "tags": ["String"],
  "title": "String",
  "triggers": [
    {
      "name": "String",
      "type": "String",
      "value": "String"
    }
  ],
  "type": "string",
  "userStates": [
    {
      "accountName": "String",
      "domainName": "String",
      "logonDateTime": "String (timestamp)",
      "logonId": "String",
      "logonIpAddress": "String",
      "logonLocation": "String",
      "logonType": "String",
      "onPremisesSecurityIdentifier": "String",
      "riskScore": "String",
      "userAccountType": "String",
      "userPrincipalName": "String"
    }
  ],
  "vendorInformation":
  {
    "provider": "String",
    "providerVersion": "String",
    "subProvider": "String",
    "vendor": "String"
  },
  "vulnerabilityStates": [
    {
      "cve": "String",
      "name": "String",
      "severity": "String"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get glert",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
