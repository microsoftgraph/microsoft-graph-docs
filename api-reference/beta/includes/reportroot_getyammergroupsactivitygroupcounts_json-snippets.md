#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getYammerGroupsActivityGroupCounts = await graphClient.Reports.GetYammerGroupsActivityGroupCounts().Request().GetAsync();

```