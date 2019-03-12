#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var serviceConfigurationRecords = await graphClient.Domains.Domains.ServiceConfigurationRecords.Request().GetAsync();
*** 

```