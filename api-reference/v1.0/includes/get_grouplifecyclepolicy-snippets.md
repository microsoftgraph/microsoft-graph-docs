#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groupLifecyclePolicies = await graphClient.GroupLifecyclePolicies.Request().GetAsync();
*** 

```