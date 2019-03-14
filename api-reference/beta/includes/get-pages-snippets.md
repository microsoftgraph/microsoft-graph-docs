#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var pages = await graphClient.Sites["{site-id}"].Pages.Request().GetAsync();

```