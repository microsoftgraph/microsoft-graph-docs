#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var errors = await graphClient.Education.SynchronizationProfiles.SynchronizationProfiles.Errors.Request().GetAsync();

```