#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var content = await graphClient.Me.Onenote.Resources["{id}"].Content.Request().GetAsync();

```