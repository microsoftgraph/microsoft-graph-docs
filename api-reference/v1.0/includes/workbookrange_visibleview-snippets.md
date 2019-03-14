#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var visibleView = await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"].Range().VisibleView().Request().GetAsync();

```