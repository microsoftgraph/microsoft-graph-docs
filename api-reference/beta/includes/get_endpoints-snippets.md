#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var endpoints = await graphClient.Groups["{id}"].Endpoints.Request().GetAsync();

```