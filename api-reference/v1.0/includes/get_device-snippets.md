#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var devices = await graphClient.Devices["{id}"].Request().GetAsync();

```