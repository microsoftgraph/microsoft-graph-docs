#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var events = await graphClient.Groups["{id}"].Events.Request().GetAsync();

```