
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create String list and populate it
var groupIds = new List<String>();

await graphClient.DirectoryObjects["{id}"]
	.checkMemberGroups(groupIds);
	.Request()
	.PostAsync()

```