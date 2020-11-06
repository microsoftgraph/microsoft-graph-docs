---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var webAccount = new WebAccount
{
	Description = "My Github contributions!",
	UserId = "innocenty.popov",
	Service = new ServiceInformation
	{
		Name = "GitHub",
		WebUrl = "https://github.com"
	}
};

await graphClient.Me.Profile.WebAccounts
	.Request()
	.AddAsync(webAccount);

```