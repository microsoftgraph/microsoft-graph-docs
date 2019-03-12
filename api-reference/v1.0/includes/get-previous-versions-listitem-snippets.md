#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var versions = await graphClient.Sites.Sites.Lists.Lists.Items.Items.Versions.Request().GetAsync();
*** 

```