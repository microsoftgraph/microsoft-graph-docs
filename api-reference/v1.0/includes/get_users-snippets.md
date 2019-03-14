#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var users = await graphClient.Users.Request().Select("displayName,givenName,postalCode").GetAsync();

```