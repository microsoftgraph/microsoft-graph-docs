#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sort = await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Sort.Request().GetAsync();

```