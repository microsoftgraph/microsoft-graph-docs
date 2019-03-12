#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var riskyUsers = await graphClient.RiskyUsers.Request().GetAsync();
*** 

```