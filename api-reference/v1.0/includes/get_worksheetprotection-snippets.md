#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var protection = await graphClient.Me.Drive.Items.Items.Workbook.Worksheets.Worksheets.Protection.Request().GetAsync();

```