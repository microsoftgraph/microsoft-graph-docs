---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemEmail = new ItemEmail
{
	Address = "Innocenty.Popov@adventureworks.com"
};

await graphClient.Me.Profile.Emails
	.Request()
	.AddAsync(itemEmail);

```