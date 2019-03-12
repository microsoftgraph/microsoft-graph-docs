#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groups = await graphClient.Groups.Groups.Request().GetAsync();

```