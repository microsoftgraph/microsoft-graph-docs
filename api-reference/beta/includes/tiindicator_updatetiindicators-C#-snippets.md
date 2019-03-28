
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var additionalInformation = "test again";

var id = "e58c072b-c9bb-a5c4-34ce-eb69af44fb1e";

var additionalInformationVar = "mytest";

var idVar = "c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4";

//create TiIndicator list and populate it
var value = new List<TiIndicator>();
value.Add(new TiIndicator(idVar,additionalInformationVar));
value.Add(new TiIndicator(id,additionalInformation));

await graphClient.Security.TiIndicators
	.updateTiIndicators(value);
	.Request()
	.PostAsync()

```