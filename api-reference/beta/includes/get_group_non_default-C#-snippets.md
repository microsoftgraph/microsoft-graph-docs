
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var groups = await graphClient.Groups["b320ee12-b1cd-4cca-b648-a437be61c5cd"]
	.Request()
	.Select("allowExternalSenders,autoSubscribeNewMembers,isSubscribedByMail,unseenCount")
	.GetAsync();

```