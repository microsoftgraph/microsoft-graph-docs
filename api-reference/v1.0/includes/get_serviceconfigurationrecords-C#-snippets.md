
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var serviceConfigurationRecords = await graphClient.Domains["{domain-name}"].ServiceConfigurationRecords
	.Request()
	.GetAsync();

```