#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var dataPolicyOperations = await graphClient.DataPolicyOperations.DataPolicyOperations.Request().GetAsync();
*** 

```