
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Attachment
var item = new Attachment
{
};

//create instance of Attachment
var attachments = new Attachment
{
	@odata.type = "#microsoft.graph.itemAttachment",
	Name = "name-value",
	Item = item,
};

await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"].Attachments
	.Request()
	.AddAsync(attachments);

```