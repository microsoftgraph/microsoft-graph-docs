#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var pages = await graphClient.Sites.Sites.Pages.Request().GetAsync();
*** 

```