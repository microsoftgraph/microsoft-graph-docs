#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var scopedAdministratorOf = await graphClient.Me.ScopedAdministratorOf.Request().GetAsync();
*** 

```