#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var lastRow = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().LastRow().Request().GetAsync();

```