---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var webAccount = new WebAccount
{
	Description = "description-value",
	UserId = "userId-value",
	Service = new ServiceInformation
	{
		Name = "name-value",
		WebUrl = "webUrl-value"
	},
	StatusMessage = "statusMessage-value",
	WebUrl = "webUrl-value"
};

await graphClient.Me.Profile.WebAccounts
	.Request()
	.AddAsync(webAccount);

```