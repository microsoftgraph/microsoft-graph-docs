
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create String list and populate it
var groupIds = new List<String>();

await graphClient.Groups["{id}"]
	.checkMemberGroups(groupIds);
	.Request()
	.PostAsync()

```