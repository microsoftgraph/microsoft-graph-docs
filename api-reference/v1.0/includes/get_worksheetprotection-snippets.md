#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var protection = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Protection.Request().GetAsync();

```