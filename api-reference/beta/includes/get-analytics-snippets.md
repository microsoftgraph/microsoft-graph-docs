#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var analytics = await graphClient.Drives.Drives.Items.Items.Analytics.Request().GetAsync();

```