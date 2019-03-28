
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Attachment
var attachments = new Attachment
{
	@odata.type = "#microsoft.graph.fileAttachment",
	Name = "smile",
	ContentBytes = "base64R0lGODdhEAYEAA7",
};

await graphClient.Me.Messages["AAMkpsDRVK"].Attachments
	.Request()
	.AddAsync(attachments);

```