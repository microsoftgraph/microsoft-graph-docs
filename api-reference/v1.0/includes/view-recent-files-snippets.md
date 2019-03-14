#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var recent = await graphClient.Me.Drive.Recent().Request().GetAsync();

```