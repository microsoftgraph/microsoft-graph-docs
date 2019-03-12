#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var applications = await graphClient.Applications.Request().GetAsync();
*** 

```