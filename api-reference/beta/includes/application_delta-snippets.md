#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var applications = await graphClient.Applications.Applications.Request().GetAsync();

```