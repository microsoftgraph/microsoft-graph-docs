#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var identityProviders = await graphClient.IdentityProviders.Request().GetAsync();
*** 

```