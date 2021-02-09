---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var post = new Post
{
	Body = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "I attached an event."
	},
	Attachments = new PostAttachmentsCollectionPage()
	{
		new ItemAttachment
		{
			Name = "Holiday event",
			Item = new Event
			{
				Subject = "Discuss gifts for children",
				Body = new ItemBody
				{
					ContentType = BodyType.Html,
					Content = "Let's look for funding!"
				},
				Start = new DateTimeTimeZone
				{
					DateTime = "2019-12-02T18:00:00",
					TimeZone = "Pacific Standard Time"
				},
				End = new DateTimeTimeZone
				{
					DateTime = "2019-12-02T19:00:00",
					TimeZone = "Pacific Standard Time"
				}
			}
		}
	}
};

await graphClient.Groups["1848753d-185d-4c08-a4e4-6ee40521d115"].Threads["AAQkADJUdfolA=="]
	.Reply(post)
	.Request()
	.PostAsync();

```