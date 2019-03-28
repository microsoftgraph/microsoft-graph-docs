
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var verificationDnsRecords = await graphClient.Domains["{domain-name}"].VerificationDnsRecords
	.Request()
	.GetAsync();

```