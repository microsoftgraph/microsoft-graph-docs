
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var id = "id-value";

var groupId = "groupId-value";

var renameAs = "renameAs-value";

await graphClient.Me.Onenote.Sections["{id}"]
	.copyToSectionGroup(id,groupId,renameAs,siteCollectionId,siteId);
	.Request()
	.PostAsync()

```