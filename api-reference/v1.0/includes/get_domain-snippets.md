#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var domains = await graphClient.Domains.Domains.Request().GetAsync();
*** 

```