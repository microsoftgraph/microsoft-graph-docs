#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var lists = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Request().GetAsync();

```