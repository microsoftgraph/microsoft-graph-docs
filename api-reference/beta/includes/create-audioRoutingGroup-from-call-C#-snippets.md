
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create String list and populate it
var receivers = new List<String>();

//create String list and populate it
var sources = new List<String>();

//create instance of AudioRoutingGroup
var audioRoutingGroups = new AudioRoutingGroup
{
	Id = "oneToOne",
	RoutingMode = "oneToOne",
	Sources = sources,
	Receivers = receivers,
};

await graphClient.App.Calls["{id}"].AudioRoutingGroups
	.Request()
	.AddAsync(audioRoutingGroups);

```