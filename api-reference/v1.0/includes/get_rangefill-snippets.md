#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var fill = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().Format.Fill.Request().GetAsync();

```