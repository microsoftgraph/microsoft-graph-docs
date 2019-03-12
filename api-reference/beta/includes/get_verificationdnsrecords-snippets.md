#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var verificationDnsRecords = await graphClient.Domains.Domains.VerificationDnsRecords.Request().GetAsync();
*** 

```