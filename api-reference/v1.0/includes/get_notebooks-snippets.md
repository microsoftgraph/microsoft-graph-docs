#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var notebooks = await graphClient.Me.Onenote.Notebooks.Request().GetAsync();

```