---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appConsentRequests = await graphClient.IdentityGovernance.AppConsent.AppConsentRequests
	.Request()
	.Filter("userConsentRequests/any (u:u/status eq 'InProgress')")
	.GetAsync();

```