
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var directoryAudits = await graphClient.AuditLogs.DirectoryAudits["{id}"]
	.Request()
	.GetAsync();

```