#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var transitiveMemberOf = await graphClient.Devices["{id}"].TransitiveMemberOf.Request().GetAsync();

```