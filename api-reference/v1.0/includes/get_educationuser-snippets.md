#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var users = await graphClient.Education.Users.Users.Request().GetAsync();

```