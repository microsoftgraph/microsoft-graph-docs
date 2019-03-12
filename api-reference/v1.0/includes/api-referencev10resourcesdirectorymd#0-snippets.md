#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directory = await graphClient.Directory.Request().GetAsync();
*** 

```