#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var {size} = await graphClient.Me.Drive.Items["{item-id}"].Thumbnails["{thumb-id}"].{size}.Request().GetAsync();

```