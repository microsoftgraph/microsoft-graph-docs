#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var profileStatus = await graphClient.Education.SynchronizationProfiles["{id}"].ProfileStatus.Request().GetAsync();

```