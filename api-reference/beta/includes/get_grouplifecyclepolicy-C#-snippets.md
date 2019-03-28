
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var groupLifecyclePolicies = await graphClient.GroupLifecyclePolicies
	.Request()
	.GetAsync();

```