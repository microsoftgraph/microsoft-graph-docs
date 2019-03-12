#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var manager = await graphClient.Users.Users.Manager.Request().GetAsync();

```