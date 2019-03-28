
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var installedApps = await graphClient.Teams["{id}"].InstalledApps
	.Request()
	.Expand("teamsAppDefinition")
	.GetAsync();

```