#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var tables = await graphClient.Me.Drive.Items.Items.Workbook.Tables.Tables.Request().GetAsync();
*** 

```