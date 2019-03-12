#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var names = await graphClient.Me.Drive.Items.Items.Workbook.Names.Request().GetAsync();
*** 

```