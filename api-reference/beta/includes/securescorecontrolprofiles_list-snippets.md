#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var secureScoreControlProfiles = await graphClient.Security.SecureScoreControlProfiles.Request().GetAsync();

```