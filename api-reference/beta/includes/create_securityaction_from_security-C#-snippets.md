
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of SecurityVendorInformation
var vendorInformation = new SecurityVendorInformation
{
	Provider = "Windows Defender ATP",
	Vendor = "Microsoft",
};

var value = "1.2.3.4";

var name = "IP";

//create KeyValuePair list and populate it
var parameters = new List<KeyValuePair>();
parameters.Add(new KeyValuePair(name,value));

//create instance of SecurityAction
var securityActions = new SecurityAction
{
	Name = "BlockIp",
	ActionReason = "Test",
	Parameters = parameters,
	VendorInformation = vendorInformation,
};

await graphClient.Security.SecurityActions
	.Request()
	.AddAsync(securityActions);

```