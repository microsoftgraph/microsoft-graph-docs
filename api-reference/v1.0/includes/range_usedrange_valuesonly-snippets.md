#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var usedRange = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().UsedRange().Request().GetAsync();

```