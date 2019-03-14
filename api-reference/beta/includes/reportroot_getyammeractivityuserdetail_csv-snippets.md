#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getYammerActivityUserDetail = await graphClient.Reports.GetYammerActivityUserDetail().Request().GetAsync();

```