#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var columns = await graphClient.Me.Drive.Items.Items.Workbook.Tables.Tables.Columns.Request().GetAsync();

```