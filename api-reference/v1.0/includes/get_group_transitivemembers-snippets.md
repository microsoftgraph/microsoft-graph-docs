#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var transitiveMembers = await graphClient.Groups["{id}"].TransitiveMembers.Request().GetAsync();

```