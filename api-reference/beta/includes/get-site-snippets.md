#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sites = await graphClient.Sites.Sites.Request().GetAsync();
*** 

```