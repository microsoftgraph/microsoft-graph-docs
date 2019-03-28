
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var schemaExtensions = await graphClient.SchemaExtensions
	.Request()
	.Filter("id eq 'graphlearn_test'")
	.GetAsync();

```