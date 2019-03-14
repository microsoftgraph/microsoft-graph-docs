#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groupLifecyclePolicies = await graphClient.Groups["{id}"].GroupLifecyclePolicies.Request().GetAsync();

```