#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var transitiveMemberOf = await graphClient.Groups.Groups.TransitiveMemberOf.Request().GetAsync();

```