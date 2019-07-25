---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipal servicePrincipal = new ServicePrincipal();
servicePrincipal.accountEnabled = true;
LinkedList<AddIn> addInsList = new LinkedList<AddIn>();
AddIn addIns = new AddIn();
addIns.id = "id-value";
addIns.type = "type-value";
LinkedList<KeyValue> propertiesList = new LinkedList<KeyValue>();
KeyValue properties = new KeyValue();
properties.key = "key-value";
properties.value = "value-value";
propertiesList.add(properties);
addIns.properties = propertiesList;
addInsList.add(addIns);
servicePrincipal.addIns = addInsList;
servicePrincipal.appDisplayName = "appDisplayName-value";
servicePrincipal.appId = "appId-value";
servicePrincipal.appOwnerOrganizationId = "appOwnerOrganizationId-value";
servicePrincipal.appRoleAssignmentRequired = true;

graphClient.servicePrincipals("{id}")
	.buildRequest()
	.patch(servicePrincipal);

```