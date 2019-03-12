#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var series = await graphClient.Me.Drive.Items.Items.Workbook.Worksheets.Worksheets.Charts.Charts.Series.Series.Request().GetAsync();

```