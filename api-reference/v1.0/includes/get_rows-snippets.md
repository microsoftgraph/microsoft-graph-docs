#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var rows = await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"].Range().VisibleView().Rows.Request().GetAsync();

```