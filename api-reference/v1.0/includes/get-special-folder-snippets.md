#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var special = await graphClient.Me.Drive.Special["{name}"].Request().GetAsync();

```