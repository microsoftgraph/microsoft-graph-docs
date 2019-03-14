#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var $value = await graphClient.Users["{id|userPrincipalName}"].Photo.$value.Request().GetAsync();

```