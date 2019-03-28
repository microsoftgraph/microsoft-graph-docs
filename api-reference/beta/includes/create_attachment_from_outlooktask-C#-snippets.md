
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Attachment
var attachments = new Attachment
{
	LastModifiedDateTime = "datetime-value",
	Name = "name-value",
	ContentType = "contentType-value",
	Size = 99,
	IsInline = true,
};

await graphClient.Users["{id}"].Outlook.Tasks["{id}"].Attachments
	.Request()
	.AddAsync(attachments);

```