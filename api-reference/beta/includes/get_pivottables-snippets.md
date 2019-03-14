#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var pivotTables = await graphClient.Drive.Root.Workbook.Worksheets["{id}"].PivotTables.Request().GetAsync();

```