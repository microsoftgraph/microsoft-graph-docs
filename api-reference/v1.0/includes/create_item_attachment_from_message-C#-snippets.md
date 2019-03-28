
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Attachment
var end = new Attachment
{
	DateTime = "2016-12-02T19:00:00",
	TimeZone = "Pacific Standard Time",
};

//create instance of Attachment
var start = new Attachment
{
	DateTime = "2016-12-02T18:00:00",
	TimeZone = "Pacific Standard Time",
};

//create instance of Attachment
var body = new Attachment
{
	ContentType = "HTML",
	Content = "Let's look for funding!",
};

//create instance of Attachment
var item = new Attachment
{
	@odata.type = "microsoft.graph.event",
	Subject = "Discuss gifts for children",
	Body = body,
	Start = start,
	End = end,
};

//create instance of Attachment
var attachments = new Attachment
{
	@odata.type = "#microsoft.graph.itemAttachment",
	Name = "Holiday event",
	Item = item,
};

await graphClient.Me.Messages["AAMkpsDRVK"].Attachments
	.Request()
	.AddAsync(attachments);

```