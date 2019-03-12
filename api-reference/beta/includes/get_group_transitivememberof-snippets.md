#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var transitiveMemberOf = await graphClient.Groups.Groups.TransitiveMemberOf.Request().GetAsync();
*** 

```