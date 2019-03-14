#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var items = await graphClient.Me.Drive.Items["{item-id}"].Request().GetAsync();

```