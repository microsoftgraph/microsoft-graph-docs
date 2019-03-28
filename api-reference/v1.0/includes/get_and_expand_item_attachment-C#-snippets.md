
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var attachments = await graphClient.Me.Messages["AAMkADA1M-zAAA="].Attachments["AAMkADA1M-CJKtzmnlcqVgqI="]
	.Request()
	.Expand("")
	.GetAsync();

```