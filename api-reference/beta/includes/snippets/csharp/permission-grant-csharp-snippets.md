---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var recipients = new List<DriveRecipient>()
{
	new DriveRecipient
	{
		Email = "john@contoso.com"
	},
	new DriveRecipient
	{
		Email = "ryan@external.com"
	}
};

var roles = new List<String>()
{
	"read"
};

await graphClient.Shares["{encoded-sharing-url}"].Permission
	.Grant(roles,recipients)
	.Request()
	.PostAsync();

```