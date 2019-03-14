#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessActivityCounts = await graphClient.Reports.GetSkypeForBusinessActivityCounts().Request().GetAsync();

```