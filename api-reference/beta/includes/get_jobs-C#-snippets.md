
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var jobs = await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs
	.Request()
	.GetAsync();

```