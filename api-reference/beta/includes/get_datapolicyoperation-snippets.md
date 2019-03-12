#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var dataPolicyOperations = await graphClient.DataPolicyOperations.DataPolicyOperations.Request().GetAsync();
*** 

```