#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var title = await graphClient.Me.Drive.Items.Items.Workbook.Worksheets.Worksheets.Charts.Charts.Axes.ValueAxis.Title.Request().GetAsync();

```