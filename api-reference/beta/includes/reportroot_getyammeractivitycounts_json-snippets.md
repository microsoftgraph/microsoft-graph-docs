#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getYammerActivityCounts = await graphClient.Reports.GetYammerActivityCounts().Request().GetAsync();

```