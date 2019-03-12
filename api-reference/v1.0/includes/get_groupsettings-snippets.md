#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groupSettings = await graphClient.GroupSettings.Request().GetAsync();
*** 

```