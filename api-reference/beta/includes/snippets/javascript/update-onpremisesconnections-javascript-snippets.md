---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcOnPremisesConnection = {
  @odata.type: "#microsoft.graph.cloudPcOnPremisesConnection",
  displayName: "Display Name value",
  subscriptionId: "0ac520ee-14c0-480f-b6c9-0a90c585ffff",
  subscriptionName: "Subscription Name value",
  adDomainName: "Active Directory Domain Name value",
  adDomainUsername: "Active Directory Domain User Name value",
  organizationalUnit: "Organization Unit value",
  resourceGroupId: "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG",
  virtualNetworkId: "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet",
  subnetId: "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default"
};

let res = await client.api('/deviceManagement/virtualEndpoint/onPremisesConnections/{id}')
	.version('beta')
	.update(cloudPcOnPremisesConnection);

```