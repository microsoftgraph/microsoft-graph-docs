
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var messages = await graphClient.Me.Messages["AAMkAGI1AAAoZCfHAAA="]
	.Request()
	.Header("Prefer","outlook.body-content-type="text"")
	.Select("subject,body,bodyPreview,uniqueBody")
	.GetAsync();

```