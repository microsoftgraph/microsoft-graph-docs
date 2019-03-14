#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getYammerGroupsActivityCounts = await graphClient.Reports.GetYammerGroupsActivityCounts().Request().GetAsync();

```