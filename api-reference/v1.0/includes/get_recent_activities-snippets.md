#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var recent = await graphClient.Me.Activities.Recent().Request().GetAsync();

```