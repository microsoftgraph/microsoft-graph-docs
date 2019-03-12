#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var schemaExtensions = await graphClient.SchemaExtensions.SchemaExtensions.Request().GetAsync();
*** 

```