#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var entireRow = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().EntireRow().Request().GetAsync();

```