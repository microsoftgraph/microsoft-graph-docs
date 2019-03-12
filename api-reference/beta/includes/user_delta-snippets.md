#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var users = await graphClient.Users.Users.Request().GetAsync();
*** 

```