#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var verificationDnsRecords = await graphClient.Domains.Domains.VerificationDnsRecords.Request().GetAsync();
*** 

```