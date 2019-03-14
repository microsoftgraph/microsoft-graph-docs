#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var drives = await graphClient.Drives["{drive-id}"].Request().GetAsync();

```