#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var thumbnails = await graphClient.Me.Drive.Items["{item-id}"].Thumbnails.Request().GetAsync();

```