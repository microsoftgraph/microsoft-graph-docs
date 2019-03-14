#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var lists = await graphClient.Sites["{site-id}"].Lists.Request().GetAsync();

```