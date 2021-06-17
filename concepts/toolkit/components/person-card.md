---
title: "Person-Card component in the Microsoft Graph Toolkit"
description: "A Person-Card component is a component to display more information relating to a person."
localization_priority: Normal
author: vogtn
---

# Person-Card component in the Microsoft Graph Toolkit

A Person-Card component is a responsive component to display more information related to a person. It is generally used as a flyout on the `mgt-person` component.

For more information about the `mgt-person` component, see [mgt-person](./person.md).

## Example

The following example shows the use of the `mgt-person-card` component with a `mgt-person` component. Hover over the person to see the Person Card and use the code editor to see how [properties](#properties) change the behavior of the component.
  
<iframe src="https://mgt.dev/iframe.html?id=components-mgt-person-card--person-card&source=docs" height="400"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-person-card--person-card&source=docs)


## Global component configuration

The `MgtPersonCard` class exposes a static `config` object that configures all person card components in the application. The config object configures what sections and what APIs are used by the person card to fetch details about a user from Microsoft Graph.

By default, all sections and APIs are enabled. The following example shows how to use the config object to disable sections or APIs.

```ts
import { MgtPersonCard } from `@microsoft/mgt`;

MgtPersonCard.config.useContactApis = false;
MgtPersonCard.config.sections.profile = false;
```

The following properties are available on the config object.

| Property | Description |
| ------------ | ------------- |
| useContactApis | `boolean` - Indicates whether the person card component can use the Microsoft Graph Contact API to search for contact details and photos. Default value is `true`.  |
| sections | `object` - Configures what sections are shown in the person card.  |

### Person card sections

The person card contains several configurable sections for displaying person details:
* Contact - Contact information such as email, phone, position, location, and more.
* Organization - Organizational graph with managers, direct reports, and relevant people.
* Messages - Most relevant email messages with the current signed in user.
* Files - Most relevant shared files with the current signed in user.
* Profile - Profile information such as projects, skills, languages, and more.

Sections are loaded by default, but they can be disabled globally via the `MgtPersonCard.config.sections` object property. The following properties are available.

| Property | Description |
| ------------ | ------------- |
| organization | `boolean` - Indicates whether the person card organization section is shown. Default value is `true`.  |
| mailMessages | `boolean` - Indicates whether the person card messages section is shown. Default value is `true`.  |
| files | `boolean` - Indicates whether the person card files section is shown. Default value is `true`.  |
| profile | `boolean` - Indicates whether the person card profile section is shown. Default value is `true`.  |

To disable a section, simply set the property to `false` in your app initialization code:
```ts
import { MgtPersonCard } from `@microsoft/mgt`;

MgtPersonCard.config.sections.profile = false;
```

## Setup for Teams integrations

The Person-Card component allows the user to contact the target person, including via Teams chat. If using the component inside a Teams tab app, you can ensure that the component deep links directly to a chat instead of opening a browser window by setting the `microsoftTeamsLib` in `TeamsProvider`.

If the Person-Card component is unable to detect the Teams lib, the component will attempt to open the Teams web client instead.

```ts
import * as microsoftTeams from "@microsoft/teams-js";
import {TeamsHelper} from '@microsoft/mgt';

TeamsHelper.microsoftTeamsLib = microsoftTeams;
```

For more information about the `TeamsProvider` provider, see [Microsoft Teams provider](../providers/teams.md).

## Properties

By default, the `mgt-person` component will pass the person details to the `mgt-person-card` component. However, you can use these attributes to change this when templating the `mgt-person` component or when using the `mgt-person-card` component as a standalone component.

| Attribute         | Type                     | Description                                                                           |
| ---------------- | -------------------------------- | ------------------------------------------------------------------------------------- |
| person-details | MicrosoftGraph.User <br> MicrosoftGraph.Person <br> MicrosoftGraph.Contact | Person object as defined by Microsoft Graph, containing details related to the user. |
| person-image   | string                    | Image uri related to the person displayed in the card.                                   |
| inherit-details   | None.                  | Allows person-card to walk parent tree for `mgt-person` component to use the same `person-details` and `person-image` data.                      |
| user-id | string | Allows developers to supply user-id to retrieve data shown on person-card component |
| person-query | string | Allows developers to supply person-query to retrieve data shown on person-card component |


## Templates

The Person-Card component uses [templates](../customize-components/templates.md) that allow you to add or replace portions of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` value to one of the following.

| Data type | Data context | Description |
| - | - | - |
| no-data | null | The template used when no data is available.
| default | `person`: The person details object <br> `personImage`: The URL of the image | The default template replaces the entire component with your own. |
| person-details | `person`: The person details object | The template used to render the top part of the person card. |
| additional-details | `person`: The person details object <br> `personImage`: the URL of the image | The template used to add custom content to the additional details container. |

For example, you can use a template to customize the component attached to the `mgt-person` component and a template to add additional details in the card. 

```html
    <mgt-person person-query="me" view="twolines" person-card="hover">
      <template data-type="person-card">
        <mgt-person-card inherit-details>
          <template data-type="additional-details">
            <h3>Stuffed Animal Friends:</h3>
            <ul>
              <li>Giraffe</li>
              <li>lion</li>
              <li>Rabbit</li>
            </ul>
          </template>
        </mgt-person-card>
      </template>
    </mgt-person>

```

## Events

The following events are fired from the component.

| Event | Description |
| --- | --- |
| `expanded` | The user has opened the expanded details section of the card. |

## CSS custom properties

The `mgt-person-card` component defines the following CSS custom properties. 

```css
mgt-person {
  --person-card-display-name-font-size: 40px;
  --person-card-display-name-color: #ffffff;
  --person-card-title-font-size: 20px;
  --person-card-title-color: #ffffff;
  --person-card-subtitle-font-size: 10px;
  --person-card-subtitle-color: #ffffff;
  --person-card-details-title-font-size: 10px;
  --person-card-details-title-color: #b3bf0a;
  --person-card-details-item-font-size: 20px;
  --person-card-details-item-color: #3abf0a;
  --person-card-background-color: #000000;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Microsoft Graph permissions

The Person-Card control uses the following Microsoft Graph APIs and permissions.

| Configuration | Permission | API | Section |
| --- | ---------- | ------- | --------- |
| `personDetails` set with user's `id` but without e-mail, or `userId` set, or `personQuery` set to `me` | User.ReadBasic.All | [/users/{id}](/graph/api/user-list-people), [/users/{id}/photo/$value](/graph/api/profilephoto-get) | Default |
| `personQuery` set to a value different than `me` | People.Read | [/me/people/?$search=](/graph/api/user-list-people) | Default |
| `personQuery` set to a value different than `me` and `config.useContactApis` set to `true` (default) | Contacts.Read | [/me/contacts/\*](/graph/api/user-list-contacts) | Default |
| `showPresence` set to `true` | Presence.Read.All | [/users/{id}/presence](/graph/api/presence-get) | Default |
| `sections.organization` enabled (default) | User.Read.All | [/users/{id}/manager](/graph/api/user-list-manager) | Organization |
| `sections.organization.showWorksWith` set (default) | People.Read.All | [/users/{id}/people](/graph/api/user-list-people) | Organization |
| `sections.mailMessages` enabled (default) | Mail.ReadBasic | [/me/messages](/graph/api/user-list-messages) | Messages |
| `sections.files` enabled (default) | Sites.Read.All | [/me/insights/shared](/graph/api/insights-list-shared) and [/me/insights/used](/graph/api/insights-list-used) | Files |

The `MgtPersonCard` class also exposes a `getScopes` static method that returns an array of scopes required for the person card to function based on the global person card configuration.

```ts
import { MgtPersonCard } from `@microsoft/mgt`;

const neededScopes = MgtPersonCard.getScopes();
```

## Authentication

The Person-Card control uses the global authentication provider described in the [authentication documentation](../providers/providers.md). 

## Cache

> [!IMPORTANT]
> The `mgt-person-card` component retrieves the basic person data from the parent `mgt-person` component without calling Microsoft Graph. When `mgt-person-card` is used separately, it will retrieve the necessary data itself and cache it. The data displayed in card's sections is retrieved separately and is not cached.

|Object store|Cached data|Remarks|
|---------|-----------|-------|
|`people`|Person's information|Used when `personQuery` is specified and its value is different than `me`|
|`photos`|Person's photo|
|`presence`|Person's presence|Used, when `showPresence` is set to `true`|
|`users`|Person's user information|Used when `userId` is specified or the `personQuery` is set to `me`|

See [Caching](../customize-components/cache.md) for more details on how to configure the cache.
