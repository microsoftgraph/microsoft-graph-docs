
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var messages = await graphClient.Me.Messages["AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl==="]
	.Request()
	.Filter("id eq 'Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')")
	.Expand("extensions")
	.GetAsync();

```