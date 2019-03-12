#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var $value = await graphClient.Users.Users.Photo.$value.Request().GetAsync();

```