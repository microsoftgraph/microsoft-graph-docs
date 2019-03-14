#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var riskyUsers = await graphClient.RiskyUsers.Request()
.Filter("riskLevel eq microsoft.graph.riskLevel'medium'").GetAsync();

```