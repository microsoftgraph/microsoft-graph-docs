#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var profileStatus = await graphClient.Education.SynchronizationProfiles.SynchronizationProfiles.ProfileStatus.Request().GetAsync();
*** 

```