#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sharedWithMe = await graphClient.Me.Drive.SharedWithMe().Request().GetAsync();

```