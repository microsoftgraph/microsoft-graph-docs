
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var reason = "none";

await graphClient.App.Calls["{id}"]
	.reject(reason);
	.Request()
	.PostAsync()

```