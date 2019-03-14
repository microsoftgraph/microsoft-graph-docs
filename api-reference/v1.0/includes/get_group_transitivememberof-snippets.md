#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var transitiveMemberOf = await graphClient.Groups["{id}"].TransitiveMemberOf.Request().GetAsync();

```