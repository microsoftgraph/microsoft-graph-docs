---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userRegistrationFeatureSummary = await graphClient.Reports.AuthenticationMethods
	.UsersRegisteredByFeature(.all,.all)
	.Request()
	.GetAsync();

```