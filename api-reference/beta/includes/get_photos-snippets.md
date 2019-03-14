#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var photos = await graphClient.Groups["{id}"].Photos.Request().GetAsync();

```