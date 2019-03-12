#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var pivotTables = await graphClient.Me.Drive.Root.Workbook.Worksheets.Worksheets.PivotTables.PivotTables.Request().GetAsync();

```