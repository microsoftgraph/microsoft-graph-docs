#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var domainNameReferences = await graphClient.Domains.Domains.DomainNameReferences.Request().GetAsync();
*** 

```