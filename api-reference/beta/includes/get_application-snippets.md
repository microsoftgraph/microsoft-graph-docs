#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var application = await graphClient.Me.Drive.Items["{id}"].Workbook.Application.Request().GetAsync();

```