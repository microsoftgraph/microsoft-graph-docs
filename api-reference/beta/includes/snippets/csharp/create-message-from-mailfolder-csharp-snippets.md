---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	ReceivedDateTime = DateTimeOffset.Parse("2016-10-19T10:37:00Z"),
	SentDateTime = DateTimeOffset.Parse("2016-10-19T10:37:00Z"),
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