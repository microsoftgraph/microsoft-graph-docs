
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var schemaExtensions = await graphClient.SchemaExtensions["graphlearn_test"]
	.Request()
	.GetAsync();

```