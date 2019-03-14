#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var children = await graphClient.Drives["{drive-id}"].Items["{item-id}"].Children.Request().GetAsync();

```