
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var controls = await graphClient.Programs["673a7379-9c38-4f01-bd9d-4fda7260b807"].Controls
	.Request()
	.GetAsync();

```