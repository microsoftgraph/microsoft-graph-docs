---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var application = new Application
{
	DisplayName = "Contoso IWA App",
	SignInAudience = "AzureADMyOrg"
};

await graphClient.Applications
	.Request()
	.AddAsync(application);

```