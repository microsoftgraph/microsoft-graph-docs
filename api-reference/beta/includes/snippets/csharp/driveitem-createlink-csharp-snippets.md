---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var type = "view";

var scope = "anonymous";

var password = "String";

var recipients = new List<DriveRecipient>()
{
	new DriveRecipient
	{
	}
};

await graphClient.Me.Drive.Items["{driveItem-id}"]
	.CreateLink(type,scope,null,password,null,recipients)
	.Request()
	.PostAsync();

```