---
title: "pkcs12Certificate resource type"
description: "Represents configuration for uploading a pkcs12Certificate in an API call."
author: "nickgmicrosoft"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# pkcs12Certificate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration used to **upload** a certificate when using HTTPS client-certificate authentication for calling an API connector endpoint. Client certificate authentication is a mutual certificate-based authentication, where the client provides a client certificate to an API endpoint to prove its identity. The configured certificate of an API connector is sent by Azure AD to the given API endpoint, which then validates the certificate.

Inherits from [apiAuthenticationConfigurationBase](../resources/apiauthenticationconfigurationbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|pkcs12Value|String| This is the field for sending pfx content. The value should be a base-64 encoded version of the actual certificate content. Required.|
|password|String| This is the password for the pfx file. Required. If no password is used, must still provide a value of `""`.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.pkcs12Certificate"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.pkcs12Certificate",
  "pkcs12Value": "String",
  "password": "String"
}
```
