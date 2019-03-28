
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of SecurityVendorInformation
var vendorInformation = new SecurityVendorInformation
{
	Provider = "String",
	Vendor = "String",
};

//create String list and populate it
var tags = new List<String>();

var status = "@odata.type: microsoft.graph.alertStatus";

var id = "String (identifier)";

var feedback = "@odata.type: microsoft.graph.alertFeedback";

//create String list and populate it
var comments = new List<String>();

var closedDateTime = "String (timestamp)";

var assignedTo = "String";

//create Alert list and populate it
var value = new List<Alert>();
value.Add(new Alert(assignedTo,closedDateTime,comments,feedback,id,status,tags,vendorInformation));

await graphClient.Security.Alerts
	.updateAlerts(value);
	.Request()
	.PostAsync()

```