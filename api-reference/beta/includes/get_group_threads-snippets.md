#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var threads = await graphClient.Groups.Groups.Threads.Request().GetAsync();
*** 

```