
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var filterOperators = await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"].Schema.FilterOperators()
	.Request()
	.GetAsync();

```