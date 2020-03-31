---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var recipients = new List<DriveRecipient>()
{
	new DriveRecipient
	{
		Email = "ryan@contoso.com"
	}
};

var message = "Here's the file that we're collaborating on.";

var requireSignIn = true;

var sendInvitation = true;

var roles = new List<String>()
{
	"write"
};

await graphClient.Me.Drive.Items["{item-id}"]
	.Invite(recipients,requireSignIn,roles,sendInvitation,message)
	.Request()
	.PostAsync();

```