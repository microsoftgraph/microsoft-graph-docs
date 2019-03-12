#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var joinedTeams = await graphClient.Me.JoinedTeams.Request().GetAsync();
*** 

```