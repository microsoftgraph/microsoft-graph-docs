#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var drive = await graphClient.Groups["{groupId}"].Drive.Request().GetAsync();

```