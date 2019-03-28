
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var shares = await graphClient.Shares["{shareIdOrEncodedSharingUrl}"]
	.Request()
	.GetAsync();

```