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

var expirationDateTime = "2018-07-15T14:00:00Z";

await graphClient.Me.Drive.Items["{item-id}"]
	.Invite(recipients,requireSignIn,roles,sendInvitation,message,expirationDateTime,password)
	.Request()
	.PostAsync();

```