
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var buckets = await graphClient.Planner.Buckets["hsOf2dhOJkqyYYZEtdzDe2QAIUCR"]
	.Request()
	.GetAsync();

```