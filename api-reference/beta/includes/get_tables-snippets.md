#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var tables = await graphClient.Me.Drive.Items.Items.Workbook.Worksheets.Worksheets.Tables.Request().GetAsync();
*** 

```