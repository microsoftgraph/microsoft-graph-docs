#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var photo = await graphClient.Users.Users.Photo.Request().GetAsync();
*** 

```