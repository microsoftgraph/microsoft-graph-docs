#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var education = await graphClient.Education.Request().GetAsync();
*** 

```