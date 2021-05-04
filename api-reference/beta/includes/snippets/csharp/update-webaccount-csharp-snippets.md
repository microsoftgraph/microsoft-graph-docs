---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var webAccount = new WebAccount
{
	WebUrl = "https://github.com/innocenty.popov"
};

await graphClient.Me.Profile.WebAccounts["{webAccount-id}"]
	.Request()
	.UpdateAsync(webAccount);

```