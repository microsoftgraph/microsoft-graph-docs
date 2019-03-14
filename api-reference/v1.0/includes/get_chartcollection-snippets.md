#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var charts = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts.Request().GetAsync();

```