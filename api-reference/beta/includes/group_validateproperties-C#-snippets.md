
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var displayName = "Myprefix_test_mysuffix";

var mailNickname = "Myprefix_test_mysuffix";

var onBehalfOfUserId = "onBehalfOfUserId-value";

await graphClient.Groups["{id}"]
	.validateProperties(displayName,mailNickname,onBehalfOfUserId);
	.Request()
	.PostAsync()

```