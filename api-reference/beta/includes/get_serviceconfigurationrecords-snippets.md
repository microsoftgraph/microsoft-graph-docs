#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var serviceConfigurationRecords = await graphClient.Domains.Domains.ServiceConfigurationRecords.Request().GetAsync();
*** 

```