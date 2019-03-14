#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessActivityUserCounts = await graphClient.Reports.GetSkypeForBusinessActivityUserCounts().Request().GetAsync();

```