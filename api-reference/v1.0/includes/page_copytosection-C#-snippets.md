
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var id = "id-value";

var groupId = "groupId-value";

await graphClient.Me.Onenote.Pages["{id}"]
	.copyToSection(id,groupId,siteCollectionId,siteId);
	.Request()
	.PostAsync()

```