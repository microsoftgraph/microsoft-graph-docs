---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appConsentRequest = await graphClient.IdentityGovernance.AppConsent.AppConsentRequests["{appConsentRequest-id}"]
	.Request()
	.GetAsync();

```