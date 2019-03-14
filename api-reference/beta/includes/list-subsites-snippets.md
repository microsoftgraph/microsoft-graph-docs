#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sites = await graphClient.Sites["{site-id}"].Sites.Request().GetAsync();

```