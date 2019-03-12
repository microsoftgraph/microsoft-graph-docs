#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var photo = await graphClient.Users.Users.Photo.Request().GetAsync();

```