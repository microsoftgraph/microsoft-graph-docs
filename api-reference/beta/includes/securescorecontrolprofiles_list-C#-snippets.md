
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var secureScoreControlProfiles = await graphClient.Security.SecureScoreControlProfiles
	.Request()
	.GetAsync();

```