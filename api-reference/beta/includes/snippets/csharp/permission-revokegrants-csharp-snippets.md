---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var grantees = new List<DriveRecipient>()
{
	new DriveRecipient
	{
		Email = "ryan@contoso.com"
	}
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Permissions["{permission-id}"]
	.RevokeGrants(grantees)
	.Request()
	.PostAsync();

```