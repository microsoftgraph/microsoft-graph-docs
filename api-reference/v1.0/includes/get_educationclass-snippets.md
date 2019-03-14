#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var classes = await graphClient.Education.Classes["{class-id}"].Request().GetAsync();

```