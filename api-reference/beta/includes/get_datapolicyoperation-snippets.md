#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var dataPolicyOperations = await graphClient.DataPolicyOperations["{id}"].Request().GetAsync();

```