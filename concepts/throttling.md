---
title: "Microsoft Graph throttling guidance"
description: "Throttling limits the number of concurrent calls to a service to prevent overuse of resources. Microsoft Graph is designed to handle a high volume of requests. If an overwhelming number of requests occurs, throttling helps maintain optimal performance and reliability of the Microsoft Graph service."
author: "davidmu1"
localization_priority: Priority
ms.custom: graphiamtop20
---

# Microsoft Graph throttling guidance

Throttling limits the number of concurrent calls to a service to prevent overuse of resources. Microsoft Graph is designed to handle a high volume of requests. If an overwhelming number of requests occurs, throttling helps maintain optimal performance and reliability of the Microsoft Graph service.

Throttling limits vary based on the scenario. For example, if you are performing a large volume of writes, the possibility for throttling is higher than if you are only performing reads.

<!-- markdownlint-disable MD034 -->
> [!VIDEO https://www.youtube-nocookie.com/embed/J4CFxVuzNMA]
<!-- markdownlint-enable MD034 -->

<!-- markdownlint-disable MD026 -->
## What happens when throttling occurs?
<!-- markdownlint-enable MD026 -->

When a throttling threshold is exceeded, Microsoft Graph limits any further requests from that client for a period of time. When throttling occurs, Microsoft Graph returns HTTP status code 429 (Too many requests), and the requests fail. A suggested wait time is returned in the response header of the failed request. Throttling behavior can depend on the type and number of requests. For example, if you have a high volume of requests, all requests types are throttled. Threshold limits vary based on the request type. Therefore, you could encounter a scenario where writes are throttled but reads are still permitted.

## Common throttling scenarios

The most common causes of throttling of clients include:

- A large number of requests across all applications in a tenant.
- A large number of requests from a particular application across all tenants.

## Sample response

Whenever the throttling threshold is exceeded, Microsoft Graph responds with a response similar to this one.

```http
HTTP/1.1 429 Too Many Requests
Content-Type: application/json
Retry-After: 2.128

{
  "error": {
    "code": "TooManyRequests",
    "innerError": {
      "code": "429",
      "date": "2020-08-18T12:51:51",
      "message": "Please retry after",
      "request-id": "94fb3b52-452a-4535-a601-69e0a90e3aa2",
      "status": "429"
    },
    "message": "Please retry again later."
  }
}
```

## Best practices to handle throttling

The following are best practices for handling throttling:

- Reduce the number of operations per request.
- Reduce the frequency of calls.
- Avoid immediate retries, because all requests accrue against your usage limits.

When you implement error handling, use the HTTP error code 429 to detect throttling. The failed response includes the `Retry-After` response header. Backing off requests using the `Retry-After` delay is the fastest way to recover from throttling because Microsoft Graph continues to log resource usage while a client is being throttled.

1. Wait the number of seconds specified in the `Retry-After` header.
2. Retry the request.
3. If the request fails again with a 429 error code, you are still being throttled. Continue to use the recommended `Retry-After` delay and retry the request until it succeeds.

All the resources and APIs described in the [Service-specific limits](#service-specific-limits) section provide a `Retry-After` header except when noted.

For a broader discussion of throttling in the Microsoft Cloud, see [Throttling pattern](https://docs.microsoft.com/azure/architecture/patterns/throttling).

> [!NOTE]
> If no `Retry-After` header is provided by the response, we recommend implementing an exponential backoff retry policy. You can also implement [more advanced patterns](https://docs.microsoft.com/azure/architecture/patterns/category/resiliency) when building large-scale applications.
>
> Microsoft Graph SDKs already implement handlers that rely on the `Retry-After` header or default to an exponential backoff retry policy.

## Best practices to avoid throttling

Programming patterns like continuously polling a resource to check for updates and regularly scanning resource collections to check for new or deleted resources are more likely to lead to applications being throttled and degrade overall performances. You should instead leverage [change tracking](delta-query-overview.md) and [change notifications](webhooks.md) when available.

>[!NOTE]
>[Best practices for discovering files and detecting changes at scale](https://docs.microsoft.com/onedrive/developer/rest-api/concepts/scan-guidance?view=odsp-graph-online) describes best practices in details.

## Throttling and batching

[JSON batching](./json-batching.md) allows you to optimize your application by combining multiple requests into a single JSON object. Requests in a batch are evaluated individually against throttling limits and if any request exceeds the limits, it fails with a `status` of `429` and an error similar to the one provided above. The batch itself fails with a status code of `424` (Failed Dependency). It is possible for multiple requests to be throttled in a single batch. You should retry each failed request from the batch using the value provided in the `retry-after` response header from the JSON content. You may retry all the failed requests in a new batch after the longest `retry-after` value.

If SDKs retry throttled requests automatically when they are not batched, throttled requests that were part of a batch are not retried automatically.

## Service-specific limits

Microsoft Graph allows you to access data in [multiple services](overview-major-services.md), such as Outlook or Azure Active Directory. These services impose their own throttling limits that affect applications that use Microsoft Graph to access them.

Any request can be evaluated against multiple limits, depending on the scope of the limit (per app across all tenants, per tenant for all apps, per app per tenant, and so on), the request type (GET, POST, PATCH, and so on), and other factors. The first limit to be reached triggers throttling behavior. In addition to the service specific-limits described in the section, the following global limits apply:

| Request type | Per app across all tenants  |
| ------------ | ------------------------ |
| Any          | 2000 requests per second |

> [!NOTE]
> The specific limits described here are subject to change.

> **Note:** In this section, the term *tenant* refers to the Microsoft 365 organization where the application is installed. This tenant can be the same as the the one where the application was created, in the case of a single tenant application, or it can be different, in the case of a [multi-tenant application](/azure/active-directory/develop/setup-multi-tenant-app).

### Outlook service limits

Outlook service limits are evaluated for each app ID and mailbox combination. In other words, the limits described apply to a specific app accessing a specific mailbox (user or group). If an application exceeds the limit in one mailbox, it does not affect the ability to access another mailbox. The following limits apply to the public cloud as well as [national cloud deployments](/graph/deployments).

| Limit                                                      | Applies to      |
|------------------------------------------------------------|-----------------|
| 10,000 API requests in a 10 minute period                  | v1.0 and beta endpoints |
| 4 concurrent requests                                      | v1.0 and beta endpoints   |
| 15 megabytes (MB) upload (PATCH, POST, PUT) in a 30 second period | v1.0 and beta endpoints   |

#### Outlook service resources

The following resources are provided by the Outlook service.

##### Search API resources (preview)

- [External item (Microsoft Search)](/graph/api/resources/externalitem?view=graph-rest-beta)

##### Profile API resources

- [Photo](/graph/api/resources/profilephoto?view=graph-rest-1.0)

##### Calendar API resources

- [event](/graph/api/resources/event)
- [eventMessage](/graph/api/resources/eventmessage)
- [calendar](/graph/api/resources/calendar)
- [calendarGroup](/graph/api/resources/calendargroup)
- [outlookCategory](/graph/api/resources/outlookcategory)
- [attachment](/graph/api/resources/attachment)
- [place (preview)](/graph/api/resources/place)

##### Mail API resources

- [message](/graph/api/resources/message)
- [mailFolder](/graph/api/resources/mailfolder)
- [mailSearchFolder](/graph/api/resources/mailsearchfolder)
- [messageRule](/graph/api/resources/messagerule)
- [outlookCategory](/graph/api/resources/outlookcategory)
- [attachment](/graph/api/resources/attachment)

##### Personal contacts API resources

- [contact](/graph/api/resources/contact)
- [contactFolder](/graph/api/resources/contactfolder)
- [outlookCategory](/graph/api/resources/outlookcategory)

##### Social and workplace intelligence resources

- [person](/graph/api/resources/person)

##### To-do tasks API (preview) resources

- [outlookTask](/graph/api/resources/outlooktask)
- [outlookTaskFolder](/graph/api/resources/outlooktaskfolder)
- [outlookTaskGroup](/graph/api/resources/outlooktaskgroup)
- [outlookCategory](/graph/api/resources/outlookcategory)
- [attachment](/graph/api/resources/attachment)

### Cloud communication service limits

| Resource      | Limits per app per tenant    |
| -------------- | ------------ |
| [Calls](/graph/api/resources/call) | 10,000 calls/month and 100 concurrent calls   |
| [Meeting information](/graph/api/resources/meetinginfo)   | 2000 meetings/user each month |
| [Presence](/graph/api/resources/presence) (preview)   | 2 rps |

### OneNote service limits

| Limit type | Limit per app per user (delegated context) | Limit per app (app-only context) |
| ------------ | ------- | ------- |
| Requests rate | 120 requests per 1 minute and 400 per 1 hour | 240 requests per 1 minute and 800 per 1 hour |
| Concurrent requests | 5 concurrent requests | 20 concurrent requests |

The preceding limits apply to the following resources:  
onenote, notebook, sectionGroup, onenoteSection, onenotePage, onenoteResource, onenoteOperation

You can find additional information about best practices in [OneNote API throttling and how to avoid it](https://developer.microsoft.com/en-us/office/blogs/onenote-api-throttling-and-how-to-avoid-it/).  

> **Note:** The resources listed above do not return a `Retry-After` header on `429 Too Many Requests` responses.

### Project Rome service limits

| Request type | Limit per user for all apps |
| ------------ | --------------------------- |
| GET          | 400 requests per 5 minutes and 12000 requests per 1 day |
| POST, PUT, PATCH, DELETE | 100 requests per 5 minutes and 8000 requests per 1 day |

The preceding limits apply to the following resources:  
activityHistoryItem, userActivity

### Microsoft Teams service limits

Limits are expressed as requests per second (rps).

| Teams request type                                   | Limit per app per tenant        | Limit per app across all tenants      |
|------------------------------------------------------|---------------------------------|------------|
| Any Graph API calls for Microsoft Teams              | 15000 requests every 10 seconds | n/a |
| GET team, channel, tab, installedApps, appCatalogs   | 60 rps                          | 600 rps |
| POST/PUT channel, tab, installedApps, appCatalogs    |  30 rps                         | 300 rps  |
| PATCH team, channel, tab, installedApps, appCatalogs |  30 rps                         | 300 rps  |
| DELETE channel, tab, installedApps, appCatalogs      |  15 rps                         | 150 rps  |
| GET /teams/```{team-id}```, joinedTeams              |  30 rps                         | 300 rps  |
| POST /teams/```{team-id}```, PUT /groups/```{team-id}```/team, clone | 6 rps | 150 rps  |
| GET channel message  | 5 rps | 100 rps |
| GET 1:1/group chat message  | 3 rps | 30 rps |
| POST channel message | 2 rps | 20 rps |
| POST 1:1/group chat message | 2 rps | 20 rps |
| GET /teams/```{team-id}```/schedule and all APIs under this path | 60 rps | 600 rps |
| POST, PATCH, PUT /teams/```{team-id}```/schedule and all APIs under this path | 30 rps | 300 rps |
| DELETE /teams/```{team-id}```/schedule and all APIs under this path | 15 rps | 150 rps |

A maximum of 4 requests per second per app can be issued on a given team or channel.
A maximum of 3000 messages per app per day can be sent to a given channel.

See also [Microsoft Teams limits](/graph/api/resources/teams-api-overview#microsoft-teams-limits) 
and [polling requirements](/graph/api/resources/teams-api-overview#polling-requirements).

The preceding limits apply to the following resources:  
aadUserConversationMember, appCatalogs, changeTrackedEntity, channel, chatMessage, chatMessageHostedContent, conversationMember, offerShiftRequest, openShift, openShiftChangeRequest, schedule, scheduleChangeRequest, schedulingGroup, shift, shiftPreferences, swapShiftsChangeRequest, team, teamsApp, teamsAppDefinition, teamsAppInstallation, teamsAsyncOperation, teamsTab, teamsTemplate, teamwork, timeOff, timeOffReason, timeOffRequest, userSettings, workforceIntegration.

### Identity and access service limits

These service limits apply to the following entities:

- [Directory object](/graph/api/resources/directoryobject)
- [Extension property](/graph/api/resources/extensionproperty)
- [Administrative unit](/graph/api/resources/administrativeunit)
- [Application](/graph/api/resources/application)
- [Application role assignment](/graph/api/resources/approleassignment)
- [Certificate based auth configuration](/graph/api/resources/certificatebasedauthconfiguration)
- [Organizational contact](/graph/api/resources/orgcontact)
- [Device](/graph/api/resources/device)
- [Directory object partner reference](/graph/api/resources/directoryobjectpartnerreference)
- [Directory role](/graph/api/resources/directoryrole)
- [Directory role template](/graph/api/resources/directoryroletemplate)
- [Domain](/graph/api/resources/domain)
- [Domain dns record](/graph/api/resources/domaindnsrecord)
- [Domain dns cname record](/graph/api/resources/domaindnscnamerecord)
- [Domain dns mx record](/graph/api/resources/domaindnsmxrecord)
- [Domain dns srv record](/graph/api/resources/domaindnssrvrecord)
- [Domain dns txt record](/graph/api/resources/domaindnstxtrecord)
- [Domain dns unavailable record](/graph/api/resources/domaindnsunavailablerecord)
- [Endpoint](/graph/api/resources/endpoint)
- [Extension property](/graph/api/resources/extensionproperty)
- [License details](/graph/api/resources/licensedetails)
- [Group](/graph/api/resources/group)
- [Activity based timeout policy](/graph/api/resources/activitybasedtimeoutpolicy)
- [Claims mapping policy](/graph/api/resources/claimsmappingpolicy)
- [Home realm discovery policy](/graph/api/resources/homerealmdiscoverypolicy)
- [Token issuance policy](/graph/api/resources/tokenissuancepolicy)
- [Token lifetime policy](/graph/api/resources/tokenlifetimepolicy)
- [Policy base](/graph/api/resources/policybase)
- [Sts policy](/graph/api/resources/stspolicy)
- [Contract](/graph/api/resources/contract)
- [Service principal](/graph/api/resources/serviceprincipal)
- [Subscribed sku](/graph/api/resources/subscribedsku)
- [OAuth2 permission grant](/graph/api/resources/oauth2permissiongrant)
- [Organization](/graph/api/resources/organization)
- [User](/graph/api/resources/user)
- [Group setting](/graph/api/resources/groupsetting)
- [Group setting template](/graph/api/resources/groupsettingtemplate)

#### Pattern

Throttling is based on a token bucket algorithm, which works by adding individual costs of requests. The sum of request costs is then compared against pre-determined limits. Only the requests exceeding the limits will be throttled. If any of the limits are exceeded, the response will be `429 Too Many Requests`. It is possible to receive `429 Too Many Requests` responses even when the following limits are not reached, in situations when the services are under an important load or based on data volume for a specific tenant. The following table lists existing limits.

| Limit type | Resource unit quota | Write quota |
| ---------- | ----------- | -------------- |
| application+tenant pair | S: 3500, M:5000, L:8000 per 10 seconds | 3000 per 2 minutes and 30 seconds |
| application | 150,000 per 20 seconds  | 70,000 per 5 minutes |
| tenant | Not Applicable | 9000 per 5 minutes |

> **Note**: The application + tenant pair limit varies based on the number of users in the tenant requests are run against. The tenant sizes are defined as follows: S - under 50 users, M - between 50 and 500 users, and L - above 500 users.

The following table lists base request costs. Any requests not listed have a base cost of 1.

| Operation | Request Path | Base Resource Unit Cost | Write Cost |
| --------- | ------------ | ----------------- | ------------------ |
| GET | `applications` | 2 | 0 |
| GET | `applications/{id}/extensionProperties` | 2 | 0 |
| GET | `contracts` | 3 | 0 |
| POST | `directoryObjects/getByIds` |  3 | 0 |
| GET | `domains/{id}/domainNameReferences` | 4 | 0 |
| POST | `getObjectsById` | 3 | 0 |
| GET | `groups/{id}/members` | 3 | 0 |
| GET | `groups/{id}/transitiveMembers` | 5 | 0 |
| POST | `isMemberOf` | 4 | 0 |
| POST | `me/checkMemberGroups` | 4 | 0 |
| POST | `me/checkMemberObjects` | 4 | 0 |
| POST | `me/getMemberGroups` | 2 | 0 |
| POST | `me/getMemberObjects` | 2 | 0 |
| GET | `me/licenseDetails` | 2 | 0 |
| GET | `me/memberOf` | 2 | 0 |
| GET | `me/ownedObjects` | 2 | 0 |
| GET | `me/transitiveMemberOf` | 2 | 0 |
| GET | `oauth2PermissionGrants` | 2 | 0 |
| GET | `oauth2PermissionGrants/{id}` | 2 | 0 |
| GET | `servicePrincipals/{id}/appRoleAssignments` | 2 | 0 |
| GET | `subscribedSkus` | 3 | 0 |
| GET | `users` | 2 | 0 |
| GET | Any identity path not listed in the table | 1 | 0 |
| POST | Any identity path not listed in the table | 1 | 1 |
| PATCH | Any identity path not listed in the table | 1 | 1 |
| PUT | Any identity path not listed in the table | 1 | 1 |
| DELETE | Any identity path not listed in the table | 1 | 1 |

Other factors that affect a request cost:

- Using `$select` decreases cost by 1
- Using `$expand` increases cost by 1
- Using `$top` with a value of less than 20 decreases cost by 1

> **Note:** A request cost can never be lower than 1. Any request cost that applies to a request path starting with `me/` also applies to equivalent requests starting with `users/{id | userPrincipalName}/`.

#### Additional headers

##### Request headers

- **x-ms-throttle-priority** - If the header doesn't exist or is set to any other value, it indicates a normal request. We recommend setting priority to `high` only for the requests initiated by the user. The values of this header can be the following:
  - Low - Indicates the request is low priority. Throttling this request doesn't cause user-visible failures.
  - Normal - Default if no value is provided. Indicates that the request is default priority.
  - High - Indicates that the request is high priority. Throttling this request causes user-visible failures.

> **Note:** Should requests be throttled, low priority requests will be throttled first, normal priority requests second, and high priority requests last. Using the priority request header does not change the limits.

##### Regular responses requests

- **x-ms-resource-unit** - Indicates the resource unit used for this request. Values are positive integers.
- **x-ms-throttle-limit-percentage** - Returned only when the application consumed more than 0.8 of its limit. The value ranges from 0.8 to 1.8 and is a percentage of the use of the limit. The value can be used by the callers to set up an alert and take action.

##### Throttled responses requests

- **x-ms-throttle-scope** - eg. `Tenant_Application/ReadWrite/9a3d526c-b3c1-4479-ba74-197b5c5751ae/0785ef7c-2d7a-4542-b048-95bcab406e0b`. Indicates the scope of throttling with the following format `<Scope>/<Limit>/<ApplicationId>/<TenantId|UserId|ResourceId>`:
  - Scope: (string, required)
    - Tenant_Application - All requests for a particular tenant for the current application.
    - Tenant - All requests for the current tenant, regardless of the application.
    - Application - All requests for the current application.
  - Limit: (string, requied)
    - Read: Read requests for the scope (GET)
    - Write: Write requests for the scope (POST, PATCH, PUT, DELETE...)
    - ReadWrite: All Requests for the scope (any)
  - ApplicationId (Guid, required)
  - TenantId|UserId|ResourceId: (Guid, required)
- **x-ms-throttle-information** - Indicates the reason for throttling and can have any value (string). The value is provided for diagnostics and troubleshooting purposes, some examples include:
  - CPULimitExceeded - Throttling is because the limit for cpu allocation is exceeded.
  - WriteLimitExceeded - Throttling is because the write limit is exceeded.
  - ResourceUnitLimitExceeded - Throttling is because the limit for the allocated resource unit is exceeded.

### Information protection

The following limits apply to any request on `/informationProtection`.

| Operation                 | Limit per tenant                                            | Limit per resource (email, URL, file)                |
|---------------------------|-------------------------------------------------------------|------------------------------------------------------|
| POST                      | 150 requests per 15 minutes and 10000 requests per 24 hours | 1 request per 15 minutes and 3 requests per 24 hours |

The preceding limits apply to the following resources:  
threatAssessmentRequest, threatAssessmentResult, mailAssessmentRequest, emailFileAssessmentRequest, fileAssessmentRequest, urlAssessmentRequest.

### Identity protection and conditional access service limits

| Request type | Limit per tenant for all apps |
| ------------ | ------- |
| Any | 1 request per second |

The preceding limits apply to the following resources:  
riskDetection, riskyUser, riskyUserHistoryItem, namedLocation, countryNamedLocation, ipNamedLocation, conditionalAccessPolicy.

> **Note:** The resources listed above do not return a `Retry-After` header on `429 Too Many Requests` responses.

### Insights service limits

The following limits apply to any request on `me/insights` or `users/{id}/insights`.

| Limit                                                      | Applies to      |
|------------------------------------------------------------|-----------------|
| 10,000 API requests in a 10 minute period                  | v1.0 and beta endpoints |
| 4 concurrent requests                                      | v1.0 and beta endpoints   |

The preceding limits apply to the following resources:  
people, trending, usedinsight, sharedInsight.

### Microsoft Graph reports service limits

The following limits apply to any request on `/reports`.

| Operation                 | Limit per app per tenant     | Limit per tenant for all apps |
|---------------------------|------------------------------|----------------------------|
| Any request (CSV)         | 14 requests per 10 minutes   | 40 requests per 10 minutes |
| Any request (JSON, beta)  | 100 requests per 10 minutes  | n/a                        |

The preceding limits apply individually to each report API. For example, a request to the Microsoft Teams user activity report API and a request to the Outlook user activity report API within 10 minutes will count as 1 request out of 14 for each API, not 2 requests out of 14 for both.

The preceding limits apply to the **report** resource.  

### Invitation manager service limits

The following limits apply to any request on `/invitations`.

| Operation                 | Limit per tenant for all apps |
|---------------------------|------------------------------|
| Any operation             | 150 requests per 5 seconds   |

### Security detections and incidents service limits

The following limits apply to any request on `/security`.

| Operation                  | Limit per app per tenant     |
|----------------------------|------------------------------|
| Any operation on `alert`, `securityActions`,  `secureScore` | 150 requests per minute      |
| Any operation on `tiIndicator` | 1000 requests per minute |
| Any operation on `secureScore` or `secureScorecontrolProfile` | 10,000 API requests in a 10 minute period |
| Any operation on `secureScore` or `secureScorecontrolProfile` | 4 concurrent requests |

### Open and schema extensions service limits

| Request type | Limit per app per tenant |
| ------------ | ------------------------ |
| Any          | 455 requests per 10 seconds |

The preceding limits apply to the following resources: 
openTypeExtension, schemaExtension, administrativeUnit, contact, device, event, group, message, organization, post, and user.

### Files and lists service limits

Service limits for OneDrive, OneDrive for Business, and SharePoint Online are not available. For more information, see [why can't you just tell me the exact throttling limits?](/sharepoint/dev/general-development/how-to-avoid-getting-throttled-or-blocked-in-sharepoint-online#why-cant-you-just-tell-me-the-exact-throttling-limits).

The preceding information applies to the following resources:  
baseItem, baseItemVersion, columnDefinition, columnLink, contentType, drive, driveItem, driveItemVersion, fieldValueSet, itemActivity, itemActivityStat, itemAnalytics, list, listItem, listItemVersion, permission, sharedDriveItem, site, and thumbnailSet.

### Tasks and plans service limits

Service limits for Planner are not available.

The preceding information applies to the following resources:  
planner, plannerAssignedToTaskBoardTaskFormat, plannerBucket, plannerBucketTaskBoardTaskFormat, plannerGroup, plannerPlan, plannerPlanDetails, plannerProgressTaskBoardTaskFormat, plannerTask, plannerTaskDetails, and plannerUser.

### Identity and access data policy operation service limits

| Request type | Limit per tenant |
| ------------ | ---------------- |
| POST on `exportPersonalData` | 1000 requests per day for any subject and 100 per subject per day |
| Any other request | 10000 requests per hour |

The preceding limits apply to the following resources: 
dataPolicyOperation.

> **Note:** The resources listed above do not return a `Retry-After` header on `429 Too Many Requests` responses.

<!-- { "blockType": "throttlinggenstart" } -->
### Education service limits

[!INCLUDE [Education rostering APIS throttling documentation](../includes/throttling-education-rostering-apis.md)]

### Excel service limits

[!INCLUDE [Excel throttling documentation](../includes/throttling-excel.md)]

### Identity and access audit logs service limits

[!INCLUDE [Identity and access audit logs throttling documentation](../includes/throttling-Identity-and-access-audit-logs.md)]

### Identity providers service limits

[!INCLUDE [CPIM throttling documentation](../includes/throttling-cpim.md)]

### Intune service limits

[!INCLUDE [Intune applications throttling documentation](../includes/throttling-intune-applications.md)]
[!INCLUDE [Intune books throttling documentation](../includes/throttling-intune-books.md)]
[!INCLUDE [Intune company terms throttling documentation](../includes/throttling-intune-company-terms.md)]
[!INCLUDE [Intune device configuration throttling documentation](../includes/throttling-intune-device-configuration.md)]
[!INCLUDE [Intune device enrollment throttling documentation](../includes/throttling-intune-device-enrollment.md)]
[!INCLUDE [Intune devices throttling documentation](../includes/throttling-intune-devices.md)]
[!INCLUDE [Intune enrollment throttling documentation](../includes/throttling-intune-enrollment.md)]
[!INCLUDE [Intune managed applications throttling documentation](../includes/throttling-intune-managed-applications.md)]
[!INCLUDE [Intune notifications throttling documentation](../includes/throttling-intune-notifications.md)]
[!INCLUDE [Intune rbac throttling documentation](../includes/throttling-intune-rbac.md)]
[!INCLUDE [Intune remote assistance throttling documentation](../includes/throttling-intune-remote-assistance.md)]
[!INCLUDE [Intune reporting throttling documentation](../includes/throttling-intune-reporting.md)]
[!INCLUDE [Intune TEM throttling documentation](../includes/throttling-intune-tem.md)]
[!INCLUDE [Intune troubleshooting throttling documentation](../includes/throttling-intune-troubleshooting.md)]
[!INCLUDE [Intune wip throttling documentation](../includes/throttling-intune-wip.md)]

### Skype service limits

[!INCLUDE [Skype calling throttling documentation](../includes/throttling-skype-calling.md)]

### Subscription service limits

[!INCLUDE [Subscription services throttling documentation](../includes/throttling-subscription-services.md)]

<!-- { "blockType": "throttlinggenend" } -->
