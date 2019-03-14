#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var format = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().Format.Request().GetAsync();

```