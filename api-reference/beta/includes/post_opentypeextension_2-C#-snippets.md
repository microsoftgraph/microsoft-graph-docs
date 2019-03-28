
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Extension
var extensions = new Extension
{
	@odata.type = "Microsoft.Graph.OpenTypeExtension",
	ExtensionName = "Com.Contoso.Referral",
	CompanyName = "Wingtip Toys",
	DealValue = 500050,
	ExpirationDate = "2015-12-03T10:00:00Z",
};

await graphClient.Me.Messages["AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl==="].Extensions
	.Request()
	.AddAsync(extensions);

```