#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSharePointActivityUserDetail = await graphClient.Reports.GetSharePointActivityUserDetail().Request().GetAsync();

```