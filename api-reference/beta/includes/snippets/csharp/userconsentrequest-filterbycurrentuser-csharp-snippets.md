---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var filterByCurrentUser = await graphClient.IdentityGovernance.AppConsent.AppConsentRequests["{appConsentRequest-id}"].UserConsentRequests
	.FilterByCurrentUser(ConsentRequestFilterByCurrentUserOptions.Reviewer)
	.Request()
	.Filter(" (status eq 'Completed')")
	.GetAsync();

```