---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const keyCredential = {
    keyCredential: {
        type: "X509CertAndPassword",
        usage: "Sign",
        key: "MIIDYDCCAki..."
    },
    passwordCredential: {
        secretText: "MKTr0w1..."
    },
    proof:"eyJ0eXAiOiJ..."
};

let res = await client.api('/servicePrincipals/{id}/addKey')
	.post(keyCredential);

```