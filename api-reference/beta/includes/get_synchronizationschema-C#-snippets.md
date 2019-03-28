
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var schema = await graphClient.ServicePrincipals["{servicePrincipalId}"].Synchronization.Jobs["{jobId}"].Schema
	.Request()
	.Header("Authorization","Bearer {Token}")
	.GetAsync();

```