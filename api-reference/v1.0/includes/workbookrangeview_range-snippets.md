#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var range = await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"].Range().VisibleView().Range().Request().GetAsync();

```