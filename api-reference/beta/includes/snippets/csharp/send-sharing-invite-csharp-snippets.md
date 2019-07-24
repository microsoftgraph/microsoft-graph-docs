---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var recipients = new List<DriveRecipient>()
{
	new DriveRecipient
	{
		Email = "ryan@contoso.org"
	}
};

var message = "Here's the file that we're collaborating on.";

var requireSignIn = true;

var sendInvitation = true;

var roles = new List<String>()
{
	"write"
};

var password = "password123";

var expirationDateTime = 7/15/2018 2:00:00 PM;

await graphClient.Me.Drive.Items["{item-id}"]
	.Invite(requireSignIn,roles,sendInvitation,message,recipients,expirationDateTime,password)
	.Request()
	.PostAsync();

```