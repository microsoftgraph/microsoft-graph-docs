#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var programs = await graphClient.Programs.Request().GetAsync();

```