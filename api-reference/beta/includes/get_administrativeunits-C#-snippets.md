
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var administrativeUnits = await graphClient.AdministrativeUnits
	.Request()
	.GetAsync();

```