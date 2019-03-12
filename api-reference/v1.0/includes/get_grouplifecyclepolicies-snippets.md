#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groupLifecyclePolicies = await graphClient.Groups.Groups.GroupLifecyclePolicies.Request().GetAsync();

```