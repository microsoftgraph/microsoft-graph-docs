#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var agreementAcceptances = await graphClient.Me.AgreementAcceptances.Request().GetAsync();

```