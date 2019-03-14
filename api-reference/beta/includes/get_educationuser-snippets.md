#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var users = await graphClient.Education.Users["13012"].Request().GetAsync();

```