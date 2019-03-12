#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var columns = await graphClient.Me.Drive.Items.Items.Workbook.Tables.Tables.Columns.Columns.Request().GetAsync();
*** 

```