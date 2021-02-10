---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userRegistrationMethodSummary = await graphClient.Reports.AuthenticationMethods
	.UsersRegisteredByMethod(.all,.all)
	.Request()
	.GetAsync();

```