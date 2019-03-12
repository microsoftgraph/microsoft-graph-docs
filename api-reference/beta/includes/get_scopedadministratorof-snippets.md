#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var scopedAdministratorOf = await graphClient.Me.ScopedAdministratorOf.Request().GetAsync();

```