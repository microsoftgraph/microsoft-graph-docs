
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var storageLocation = "storageLocation-value";

await graphClient.Users["{id}"]
	.exportPersonalData(storageLocation);
	.Request()
	.PostAsync()

```