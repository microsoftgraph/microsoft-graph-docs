
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var signIns = await graphClient.AuditLogs.SignIns
	.Request()
	.GetAsync();

```