
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var dataPolicyOperations = await graphClient.DataPolicyOperations["{id}"]
	.Request()
	.GetAsync();

```