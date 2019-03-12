#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var photos = await graphClient.Groups.Groups.Photos.Request().GetAsync();

```