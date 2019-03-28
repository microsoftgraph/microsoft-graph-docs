
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var messages = await graphClient.Me.Messages["AAMkAGE1M2_bs88AACHsLqWAAA="]
	.Request()
	.Filter("id eq 'String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color')")
	.Expand("singleValueExtendedProperties")
	.GetAsync();

```