#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var children = await graphClient.Me.Drive.Root.Children.Request().GetAsync();

```