
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var groupSettingTemplates = await graphClient.GroupSettingTemplates["{id}"]
	.Request()
	.GetAsync();

```