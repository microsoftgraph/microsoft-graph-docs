#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var names = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Request().GetAsync();

```