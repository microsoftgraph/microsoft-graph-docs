#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var lists = await graphClient.Sites.Sites.Lists.Request().GetAsync();
*** 

```