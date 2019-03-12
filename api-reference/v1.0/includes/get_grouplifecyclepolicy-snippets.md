#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groupLifecyclePolicies = await graphClient.GroupLifecyclePolicies.Request().GetAsync();
*** 

```