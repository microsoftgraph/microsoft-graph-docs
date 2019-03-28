
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var callbackUri = "callbackUri-value";

//create instance of String
var mediaConfig = new String
{
	@odata.type = "#microsoft.graph.appHostedMediaConfig",
	Blob = "<media config blob>",
};

//create String list and populate it
var acceptedModalities = new List<String>();

await graphClient.App.Calls["{id}"]
	.answer(callbackUri,mediaConfig,acceptedModalities);
	.Request()
	.PostAsync()

```