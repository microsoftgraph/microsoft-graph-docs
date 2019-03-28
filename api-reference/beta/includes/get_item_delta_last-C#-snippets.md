
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.Me.Drive.Root.Delta('1230919asd190410jlka')
	.Request()
	.GetAsync();

```