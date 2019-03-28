
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var verificationDnsRecords = await graphClient.Domains["contoso.com"].VerificationDnsRecords
	.Request()
	.GetAsync();

```