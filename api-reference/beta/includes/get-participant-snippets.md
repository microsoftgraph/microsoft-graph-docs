#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var participants = await graphClient.App.Calls.Calls.Participants.Participants.Request().GetAsync();

```