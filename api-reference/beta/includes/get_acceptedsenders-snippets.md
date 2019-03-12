#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var acceptedSenders = await graphClient.Groups.Groups.AcceptedSenders.Request().GetAsync();
*** 

```