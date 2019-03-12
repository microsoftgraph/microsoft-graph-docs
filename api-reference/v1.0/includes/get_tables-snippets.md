#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var tables = await graphClient.Me.Drive.Items.Items.Workbook.Worksheets.Worksheets.Tables.Request().GetAsync();

```