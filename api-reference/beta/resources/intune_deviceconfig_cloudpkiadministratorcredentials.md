# cloudPkiAdministratorCredentials resource type

Certificate credential info
### Properties
|Property|Type|Description|
|---|---|---|
|adminUserName|String|Admin User Name.|
|adminPassword|String|Admin Password.|
|authenticationCertificate|Binary|The client certificate blob.|
|authenticationCertificatePassword|String|The client certificate password.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPkiAdministratorCredentials"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.cloudPkiAdministratorCredentials",
  "adminUserName": "String",
  "adminPassword": "String",
  "authenticationCertificate": "binary",
  "authenticationCertificatePassword": "String"
}
```



