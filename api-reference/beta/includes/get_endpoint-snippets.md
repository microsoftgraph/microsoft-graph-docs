#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var endpoints = await graphClient.Groups.Groups.Endpoints.Endpoints.Request().GetAsync();

```