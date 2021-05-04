---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = new ItemAttachment
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
			DateTime = "2020-01-12T18:00:00",
			TimeZone = "Pacific Standard Time"
		},
		End = new DateTimeTimeZone
		{
			DateTime = "2020-01-12T19:00:00",
			TimeZone = "Pacific Standard Time"
		}
	}
};

await graphClient.Me.Outlook.Tasks["{outlookTask-id}"].Attachments
	.Request()
	.AddAsync(attachment);

```