---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var domain = new Domain
{
	IsDefault = true,
	SupportedServices = new List<String>()
	{
		"Email",
		"OfficeCommunicationsOnline"
	}
};

await graphClient.Domains["contoso.com"]
	.Request()
	.UpdateAsync(domain);

```