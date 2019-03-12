#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var domainNameReferences = await graphClient.Domains.Domains.DomainNameReferences.Request().GetAsync();
*** 

```