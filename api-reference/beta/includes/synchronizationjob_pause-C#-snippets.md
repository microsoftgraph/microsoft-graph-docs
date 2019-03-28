
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"]
	.pause();
	.Request()
	.PostAsync()

```