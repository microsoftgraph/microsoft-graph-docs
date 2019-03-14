#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var uploadUrl = await graphClient.Education.SynchronizationProfiles["{id}"].UploadUrl().Request().GetAsync();

```