#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var entireColumn = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().EntireColumn().Request().GetAsync();

```