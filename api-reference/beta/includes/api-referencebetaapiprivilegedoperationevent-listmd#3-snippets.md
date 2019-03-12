#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedOperationEvents = await graphClient.PrivilegedOperationEvents.Request().GetAsync();
*** 

```