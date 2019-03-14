#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var drives = await graphClient.Groups["{groupId}"].Drives.Request().GetAsync();

```