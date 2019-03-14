#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var tiIndicators = await graphClient.Security.TiIndicators["{id}"].Request().GetAsync();

```