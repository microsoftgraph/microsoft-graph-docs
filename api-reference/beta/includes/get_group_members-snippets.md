#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var members = await graphClient.Groups["{id}"].Members.Request().GetAsync();

```