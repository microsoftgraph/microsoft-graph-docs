---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatMessage = new ChatMessage
{
	Subject = null,
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>"
	},
	Attachments = new List<ChatMessageAttachment>()
	{
		new ChatMessageAttachment
		{
			Id = "74d20c7f34aa4a7fb74e2b30004247c5",
			ContentType = "application/vnd.microsoft.card.thumbnail",
			ContentUrl = null,
			Content = "{\r\n  \"title\": \"This is an example of posting a card\",\r\n  \"subtitle\": \"<h3>This is the subtitle</h3>\",\r\n  \"text\": \"Here is some body text. <br>\\r\\nAnd a <a href=\\\"http://microsoft.com/\\\">hyperlink</a>. <br>\\r\\nAnd below that is some buttons:\",\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"Login to FakeBot\",\r\n      \"text\": \"login\",\r\n      \"displayText\": \"login\",\r\n      \"value\": \"login\"\r\n    }\r\n  ]\r\n}",
			Name = null,
			ThumbnailUrl = null
		}
	}
};

await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages
	.Request()
	.AddAsync(chatMessage);

```