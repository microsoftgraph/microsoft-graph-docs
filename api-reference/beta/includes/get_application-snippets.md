#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var application = await graphClient.Me.Drive.Items.Items.Workbook.Application.Request().GetAsync();
*** 

```