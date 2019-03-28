
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Attachment
var attachments = new Attachment
{
	@odata.type = "microsoft.graph.fileAttachment",
	Name = "name-value",
	ContentType = "contentType-value",
	IsInline = false,
	ContentLocation = "contentLocation-value",
	ContentBytes = "base64-contentBytes-value",
};

await graphClient.Me.Messages["{id}"].Attachments
	.Request()
	.AddAsync(attachments);

```