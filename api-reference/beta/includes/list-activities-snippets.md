#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var activities = await graphClient.Me.Drive.Activities.Request().GetAsync();

```