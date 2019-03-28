
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var attachments = await graphClient.Me.Events["AAMkAGE1M88AADUv0uAAAG="].Attachments["AAMkAGE1Mg72tgf7hJp0PICVGCc0g="]
	.Request()
	.GetAsync();

```