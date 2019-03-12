#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var font = await graphClient.Me.Drive.Items.Items.Workbook.Worksheets.Worksheets.Charts.Charts.Axes.ValueAxis.Format.Font.Request().GetAsync();

```