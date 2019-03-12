#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groupLifecyclePolicies = await graphClient.Groups.Groups.GroupLifecyclePolicies.Request().GetAsync();
*** 

```