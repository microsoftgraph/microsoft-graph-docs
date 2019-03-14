#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var content = await graphClient.Me.Drive.Items["{item-id}"].Content.Request().GetAsync();

```