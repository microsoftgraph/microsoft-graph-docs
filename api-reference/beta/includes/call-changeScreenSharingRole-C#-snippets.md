
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var role = "viewer";

await graphClient.App.Calls["{id}"]
	.changeScreenSharingRole(role);
	.Request()
	.PostAsync()

```