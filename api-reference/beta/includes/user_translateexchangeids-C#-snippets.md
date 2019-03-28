
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create String list and populate it
var inputIds = new List<String>();

var sourceIdType = "restId";

var targetIdType = "restImmutableEntryId";

await graphClient.Me
	.translateExchangeIds(inputIds,targetIdType,sourceIdType);
	.Request()
	.PostAsync()

```