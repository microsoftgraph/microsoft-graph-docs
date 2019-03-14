#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var items = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{item-id}"].Request().GetAsync();

```