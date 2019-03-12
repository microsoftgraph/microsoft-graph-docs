#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var deletedItems = await graphClient.Directory.DeletedItems.DeletedItems.Request().GetAsync();
*** 

```