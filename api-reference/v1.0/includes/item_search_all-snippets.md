#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var search = await graphClient.Me.Drive.Search().Request().GetAsync();

```