#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var cell = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().Cell().Request().GetAsync();

```