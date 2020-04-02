---
title: "People-Picker component"
description: "You can use the mgt-people-picker web component to search for a specified number of people and render the list of results via Microsoft Graph."
localization_priority: Normal
author: vogtn
---

# People-Picker component

You can use the `mgt-people-picker` web component search for a specified number of people and render the list of results via Microsoft Graph. By default, the component will search for all people; you can also define a group property to further filter the results.

If the number of people to display exceeds the `show-max` value, not all people returned will be displayed in the search list.

## Example

The following example shows the `mgt-people-picker` component. Start searching for a name to see the results render and use the code editor to see how [properties](#properties) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-people-picker--people-picker&source=docs" height="450"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-people-picker--people-picker&source=docs)

## Properties

By default, the `mgt-people-picker` component fetches events from the `/me/people` endpoint. Use the following attributes to change this behavior.

| Attribute | Property | Description                                                                                                                                                                            |
| -------- | --------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| show-max | showMax   | A number value to indicate the maximum number of people to show. the default value is 6.                                                                                             |
| people   | people    | An array of people to get or set the list of people rendered by the component. Use this property to access the people loaded by the component. Set this value to load your own people. |
| group    | group     | A string value that belongs to a Microsoft Graph defined group for further filtering of the search results.                                                                            |
|  selected-people  | selectedPeople     | An array of type  `person`, representing people selected in the component. Set this value to choose selected people by default.|

The following is a `show-max` example.

```html
<mgt-people-picker show-max="4"> </mgt-people-picker>
```

## Selected people

The selected people section of the component renders each person chosen by the developer or user. 

![mgt-people-picker](./images/selected-people.png)

You can populate selected people data by doing one of the following:

- Setting the `selectedPeople` property directly, as shown in the following example.  

    ```javascript
    // personObject = User or Person from Microsoft Graph
    document.querySelector('mgt-people-picker').selectedPeople.push(personObject);
    ```

- Using the `selectUsersById()` method, which accepts an array of Microsoft graph [user ids](https://docs.microsoft.com/graph/api/resources/users?view=graph-rest-1.0) to find associated user details for selection.

     >**Note:** If no user is found for an `id`, no data will be rendered for that `id`.

    ```javascript
    // id = Mirosoft graph User "id"
    document.querySelector('mgt-people-picker').selectUsersById(["id","id"])
    ```

## CSS custom properties

The `mgt-people-picker` component defines the following CSS custom properties.

```css
mgt-people-picker {
  --people-list-background-color: blue; /* Background-color for people under search */
  --accent-color: green; /* Color for separator of search input box and people */
}
```

## Templates

 `mgt-people-picker` supports several [templates](../templates.md) that you can use to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type | Data context | Description |
| --- | --- | --- |
| loading | null: no data | The template used to render the state of picker while request to graph is being made. |
| error | null: no data| The template used if user search returns no users. |
| selected-person |person: The person details object| The template to render selected people. |
| person | person: The person details object| The template to render people in the dropdown. |

The following examples shows how to use the `error` template.

```html
<mgt-people-picker>
  <template data-type="error">
    <p>Sorry, no people were found</p>
  </template>
</mgt-people-picker>
```

## Microsoft Graph permissions

This component uses the following Microsoft Graph APIs and permissions.

| API                                                                                                              | Permission  |
| ---------------------------------------------------------------------------------------------------------------- | ----------- |
| [/me/people](/graph/api/user-list-people?view=graph-rest-1.0)                    | People.Read        |
| [/groups/\${groupId}/members](/graph/api/group-list-members?view=graph-rest-1.0) | People.Read        |
| [/users/${userPrincipleName} ](/graph/api/user-list-people?view=graph-rest-1.0)  | User.Readbasic.All |

## Authentication

The control uses the global authentication provider described in the [authentication documentation](./../providers.md).
