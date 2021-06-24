---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const certificateBasedAuthConfiguration = {
  certificateAuthorities: [
    {
      isRootAuthority: true,
      certificate: 'Binary'
    }
  ]
};

await client.api('/organization/{id}/certificateBasedAuthConfiguration/$ref')
	.post(certificateBasedAuthConfiguration);

```