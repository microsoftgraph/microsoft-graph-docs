#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var joinedTeams = await graphClient.Me.JoinedTeams.Request().GetAsync();

```