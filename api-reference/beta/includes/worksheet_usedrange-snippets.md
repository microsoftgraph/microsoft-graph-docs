#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var UsedRange = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].UsedRange().Request().GetAsync();

```