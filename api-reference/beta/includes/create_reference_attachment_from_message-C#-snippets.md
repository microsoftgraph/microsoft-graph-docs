
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Attachment
var attachments = new Attachment
{
	@odata.type = "#microsoft.graph.referenceAttachment",
	Name = "Personal pictures",
	SourceUrl = "https://contoso.com/personal/mario_contoso_net/Documents/Pics",
	ProviderType = "oneDriveConsumer",
	Permission = "Edit",
	IsFolder = "True",
};

await graphClient.Me.Messages["AAMkAGE1M88AADUv0uFAAA="].Attachments
	.Request()
	.AddAsync(attachments);

```