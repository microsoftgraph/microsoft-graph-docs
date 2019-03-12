#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var classes = await graphClient.Education.Classes.Classes.Request().GetAsync();
*** 

```