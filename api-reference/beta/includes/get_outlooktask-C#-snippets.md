
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var tasks = await graphClient.Me.Outlook.Tasks["AAMkADA1MHgwAAA="]
	.Request()
	.Header("Prefer","outlook.timezone="Pacific Standard Time"")
	.GetAsync();

```