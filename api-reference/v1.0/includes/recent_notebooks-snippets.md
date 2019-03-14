#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getRecentNotebooks = await graphClient.Me.Onenote.Notebooks.GetRecentNotebooks().Request().GetAsync();

```