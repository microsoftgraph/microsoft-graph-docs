#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var column = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().Column().Request().GetAsync();

```