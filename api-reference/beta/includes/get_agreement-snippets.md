#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var agreements = await graphClient.Agreements.Agreements.Request().GetAsync();
*** 

```