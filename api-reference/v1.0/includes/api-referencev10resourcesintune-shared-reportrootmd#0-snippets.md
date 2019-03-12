#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var reports = await graphClient.Reports.Request().GetAsync();

```