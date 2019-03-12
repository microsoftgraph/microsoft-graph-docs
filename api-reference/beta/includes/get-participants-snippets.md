#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var participants = await graphClient.App.Calls.Calls.Participants.Request().GetAsync();

```