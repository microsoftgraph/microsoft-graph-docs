
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var entityType = "Group";

var displayName = "Myprefix_test_mysuffix";

var mailNickname = "Myprefix_test_mysuffix";

var onBehalfOfUserId = "onBehalfOfUserId-value";

await graphClient.DirectoryObjects
	.validateProperties(entityType,displayName,mailNickname,onBehalfOfUserId);
	.Request()
	.PostAsync()

```