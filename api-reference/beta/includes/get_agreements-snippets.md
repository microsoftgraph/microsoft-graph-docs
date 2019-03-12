#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var agreements = await graphClient.Agreements.Request().GetAsync();
*** 

```