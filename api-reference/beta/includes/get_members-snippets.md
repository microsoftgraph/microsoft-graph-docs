#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var members = await graphClient.Education.Classes["11016"].Members.Request().GetAsync();

```