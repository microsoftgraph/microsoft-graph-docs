#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groups = await graphClient.Groups.Request()
.Filter("hasMembersWithLicenseErrors+eq+true").Select("id,displayName").GetAsync();

```