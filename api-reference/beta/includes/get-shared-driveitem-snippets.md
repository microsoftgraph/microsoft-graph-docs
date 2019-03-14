#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var driveItem = await graphClient.Shares["{shareIdOrUrl}"].DriveItem.Request().GetAsync();

```