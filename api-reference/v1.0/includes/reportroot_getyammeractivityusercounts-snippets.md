#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getYammerActivityUserCounts = await graphClient.Reports.GetYammerActivityUserCounts().Request().GetAsync();

```