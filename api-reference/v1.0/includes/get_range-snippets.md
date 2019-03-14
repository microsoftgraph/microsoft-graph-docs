#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var range = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().Request().GetAsync();

```