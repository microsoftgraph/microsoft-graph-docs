#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessActivityUserDetail = await graphClient.Reports.GetSkypeForBusinessActivityUserDetail().Request().GetAsync();

```