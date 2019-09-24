---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	ReceivedDateTime = DateTimeOffset.Parse("datetime-value"),
	SentDateTime = DateTimeOffset.Parse("datetime-value"),
	HasAttachments = true,
	Subject = "subject-value",
	Body = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "content-value"
	},
	BodyPreview = "bodyPreview-value"
};

await graphClient.Me.MailFolders["{id}"].Messages
	.Request()
	.AddAsync(message);

```