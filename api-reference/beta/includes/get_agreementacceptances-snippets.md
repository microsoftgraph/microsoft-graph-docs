#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var agreementAcceptances = await graphClient.Me.AgreementAcceptances.Request().GetAsync();
*** 

```