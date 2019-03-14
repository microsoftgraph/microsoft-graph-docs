#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getYammerGroupsActivityDetail = await graphClient.Reports.GetYammerGroupsActivityDetail().Request().GetAsync();

```