---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationUser = {
  displayName: "Dion Matheson",
  givenName: "Dion",
  middleName: null,
  surname: "Matheson",
  mail: "DionM@contoso.com",
  mobilePhone: "+1 (253) 555-0101",
  createdBy: {
    user: {
      displayName: "Susana Rocha",
      id: "14012"
    }
  },
  externalSource: "sis",
  mailingAddress: {
    city: "Los Angeles",
    countryOrRegion: "United States",
    postalCode: "98055",
    state: "CA",
    street: "12345 Main St."
  },
  primaryRole: "student",
  residenceAddress: {
    city: "Los Angeles",
    countryOrRegion: "United States",
    postalCode: "98055",
    state: "CA",
    street: "12345 Main St."
  }
};

let res = await client.api('/education/users')
	.post(educationUser);

```