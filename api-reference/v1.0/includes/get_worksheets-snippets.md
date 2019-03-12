#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var worksheets = await graphClient.Me.Drive.Items.Items.Workbook.Worksheets.Request().GetAsync();
*** 

```