#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var errors = await graphClient.Education.SynchronizationProfiles.SynchronizationProfiles.Errors.Request().GetAsync();
*** 

```