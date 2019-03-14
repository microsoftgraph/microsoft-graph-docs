#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var verificationDnsRecords = await graphClient.Domains["contoso.com"].VerificationDnsRecords.Request().GetAsync();

```