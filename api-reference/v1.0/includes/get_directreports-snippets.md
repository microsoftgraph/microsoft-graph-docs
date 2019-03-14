#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directReports = await graphClient.Me.DirectReports.Request().GetAsync();

```