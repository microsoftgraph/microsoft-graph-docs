# Use the Azure AD identity protection API (preview)

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

You can use Microsoft Graph to query the [identityRiskEvent](identityriskevent.md) resource for each type of risk event detected by [Azure AD Identity Protection](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-identityprotection). These events are available to customers with Azure AD Premium P2. A subset of events is available to customers with Azure AD Premium P1.

* [sign-ins from anonymous IP addresses](anonymousipriskevent.md)
* [sign-ins from malware-infected devices](malwareriskevent.md)
* [impossible travel to atypical locations](impossibletravelriskevent.md)
* [users with leaked credentials](leakedcredentialsriskevent.md)
* [sign-ins from suspicious IP addresses](suspiciousipriskevent.md)
* [sign-ins from unfamiliar locations](unfamiliarlocationriskevent.md)

Use the following operations to get these events and associated information:

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List identityRiskEvent](../api/identityriskevent_get.md) |[identityRiskEvent](identityriskevent.md)| Get identityRiskEvent collection. |
|[Get identityRiskEvent](../api/identityriskevent_get.md) |[identityRiskEvent](identityriskevent.md)| Get identityRiskEvent object. |
|[List anonymousIpRiskEvent](../api/anonymousipriskevent_get.md) |[anonymousIpRiskEvent](anonymousipriskevent.md)| Get anonymousIpRiskEvent collection. |
|[Get anonymousIpRiskEvent](../api/anonymousipriskevent_get.md) |[anonymousIpRiskEvent](anonymousipriskevent.md)| Get anonymousIpRiskEvent object. |
|[List impossibleTravelRiskEvent](../api/impossibletravelriskevent_get.md) |[impossibleTravelRiskEvent](impossibletravelriskevent.md)| Get impossibleTravelRiskEvent collection. |
|[Get impossibleTravelRiskEvent](../api/impossibletravelriskevent_get.md) |[impossibleTravelRiskEvent](impossibletravelriskevent.md)| Get impossibleTravelRiskEvent object. |
|[List leakedCredentialsRiskEvent](../api/leakedcredentialsriskevent_get.md) |[leakedCredentialsRiskEvent](leakedcredentialsriskevent.md)| Get leakedCredentialsRiskEvent collection. |
|[Get leakedCredentialsRiskEvent](../api/leakedcredentialsriskevent_get.md) |[leakedCredentialsRiskEvent](leakedcredentialsriskevent.md)| Get leakedCredentialsRiskEvent object. |
|[List malwareRiskEvent](../api/malwareriskevent_get.md) |[malwareRiskEvent](malwareriskevent.md)| Get malwareRiskEvent collection. |
|[Get malwareRiskEvent](../api/malwareriskevent_get.md) |[malwareRiskEvent](malwareriskevent.md)| Get malwareRiskEvent object. |
|[List suspiciousIpRiskEvent](../api/suspiciousipriskevent_get.md) |[suspiciousIpRiskEvent](suspiciousipriskevent.md)| Get suspiciousIpRiskEvent collection. |
|[Get suspiciousIpRiskEvent](../api/suspiciousipriskevent_get.md) |[suspiciousIpRiskEvent](suspiciousipriskevent.md)| Get suspiciousIpRiskEvent object. |
|[List unfamiliarLocationRiskEvent](../api/unfamiliarlocationriskevent_get.md) |[unfamiliarLocationRiskEvent](unfamiliarlocationriskevent.md)| Get unfamiliarLocationRiskEvent collection. |
|[Get unfamiliarLocationRiskEvent](../api/unfamiliarlocationriskevent_get.md) |[unfamiliarLocationRiskEvent](unfamiliarlocationriskevent.md)| Get unfamiliarLocationRiskEvent object. |

# See also

* [About Azure Active Directory Identity Protection](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-identityprotection)
* [Get started with Azure Active Directory identity protection and Microsoft Graph](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-identityprotection-graph-getting-started)
