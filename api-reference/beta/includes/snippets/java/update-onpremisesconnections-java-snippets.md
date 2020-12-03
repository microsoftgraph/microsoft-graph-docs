---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcOnPremisesConnection cloudPcOnPremisesConnection = new CloudPcOnPremisesConnection();
cloudPcOnPremisesConnection.displayName = "Display Name value";
cloudPcOnPremisesConnection.subscriptionId = "0ac520ee-14c0-480f-b6c9-0a90c585ffff";
cloudPcOnPremisesConnection.subscriptionName = "Subscription Name value";
cloudPcOnPremisesConnection.adDomainName = "Active Directory Domain Name value";
cloudPcOnPremisesConnection.adDomainUsername = "Active Directory Domain User Name value";
cloudPcOnPremisesConnection.organizationalUnit = "Organization Unit value";
cloudPcOnPremisesConnection.resourceGroupId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG";
cloudPcOnPremisesConnection.virtualNetworkId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet";
cloudPcOnPremisesConnection.subnetId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default";

graphClient.deviceManagement().virtualEndpoint().onPremisesConnections("{id}")
	.buildRequest()
	.patch(cloudPcOnPremisesConnection);

```