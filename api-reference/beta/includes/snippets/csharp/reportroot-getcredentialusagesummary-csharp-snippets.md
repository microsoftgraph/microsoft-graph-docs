---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getCredentialUsageSummary = await graphClient.Reports
	.GetCredentialUsageSummary("D30")
	.Request()
	.Filter("feature eq 'registration'")
	.GetAsync();

```