---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemPublication = {
  description: "One persons journey to the top of the branding management field.",
  displayName: "Got Brands? The story of Innocenty Popov and his journey to the top.",
  publishedDate: "Date",
  publisher: "International Association of Branding Management Publishing",
  thumbnailUrl: "https://iabm.io/sdhdfhsdhshsd.jpg",
  webUrl: "https://www.iabm.io"
};

let res = await client.api('/me/profile/publications')
	.version('beta')
	.post(itemPublication);

```