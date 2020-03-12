---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );
MemoryStream fileStream = new MemoryStream();
file.CopyTo(fileStream);

var message = new Message
{
	Subject = "Meet for lunch?",
	Body = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "The new cafeteria is open."
	},
	ToRecipients = new List<Recipient>()
	{
		new Recipient
		{
			EmailAddress = new EmailAddress
			{
				Address = "meganb@contoso.onmicrosoft.com"
			}
		}
	},
	Attachments = new List<Attachment>()
	{
		new FileAttachment
		{
			Name = "attachment.txt",
			ContentType = "text/plain",
			ContentBytes = fileStream.ToArray(),
            Size = (int) file.Length,
            Id = Guid.NewGuid().ToString(),
            ODataType = "#microsoft.graph.fileAttachment"
		}
	}
};

await graphClient.Me
	.SendMail(message,null)
	.Request()
	.PostAsync();

```