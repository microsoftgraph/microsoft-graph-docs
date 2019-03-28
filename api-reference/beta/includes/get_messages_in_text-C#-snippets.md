
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var messages = await graphClient.Me.Messages
	.Request()
	.Header("Prefer","outlook.body-content-type="text"")
	.Select("subject,body,bodyPreview,uniqueBody")
	.GetAsync();

```