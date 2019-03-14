#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var children = await graphClient.Me.Drive.Special["{name}"].Children.Request().GetAsync();

```