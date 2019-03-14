#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSharePointActivityPages = await graphClient.Reports.GetSharePointActivityPages().Request().GetAsync();

```