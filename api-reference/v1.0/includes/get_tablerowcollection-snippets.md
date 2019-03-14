#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var rows = await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Rows.Request().GetAsync();

```