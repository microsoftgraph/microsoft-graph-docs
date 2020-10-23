---
title: "Use the Microsoft Graph Toolkit with React"
description: "Get started using the Microsoft Graph Toolkit in a React application."
localization_priority: Normal
author: elisenyang
---

# Use the Microsoft Graph Toolkit with React

Microsoft Graph Toolkit components work great with web frameworks like React in addition to vanilla JavaScript and HTML. You can use the components directly in React, but proper interop between web components and React components requires a bit of extra work. We recommend using `mgt-react`, a library that wraps and exports all the Microsoft Graph Toolkit components as React components. 

This topic covers how to use Microsoft Graph Toolkit with React. For a step-by-step walkthrough that describes how to create a new React application and use Microsoft Graph Toolkit, see [Using Microsoft Graph Toolkit with React](https://developer.microsoft.com/graph/blogs/a-lap-around-microsoft-graph-toolkit-day-13-using-microsoft-graph-toolkit-with-react/).

## Web Components and React

React passes all data to Custom Elements in the form of HTML attributes. For primitive data, this is fine, but it does not work when passing rich data, like objects or arrays. In those cases, you'll need to use a ref to pass in the object.

```jsx
//import all the components
import '@microsoft/mgt';

class App extends Component {
  render() {
    return <mgt-person show-name ref={el => (el.personDetails = { displayName: 'Megan Bowen' })} />;
  }
}
```
Because React implements its own synthetic event system, it cannot listen for DOM events coming from custom elements without the use of a workaround. You will need to use a ref to reference the Toolkit components and manually attach event listeners with addEventListener, as shown in the following example.

```jsx
// you can just import a single component
import '@microsoft/mgt/dist/es6/components/mgt-login/mgt-login.js';

class App extends Component {
  render() {
    return <mgt-login ref="loginComponent" />;
  }

  componentDidMount() {
    this.refs.loginComponent.addEventListener('loginCompleted', e => {
      // handle event
    });
  }
}
```

## React and Typescript

A known issue can occur when you use custom elements with React and Typescript. Typescript will throw an error when trying to use a component in tsx. The workaround is to define the custom element in your code, as shown.

```ts
declare global {
  namespace JSX {
    interface IntrinsicElements {
      'mgt-login': any;
    }
  }
}
```
You can then use it in your tsx as `<mgt-login></mgt-login>`.

## Using mgt-react

We recommend using `mgt-react` to simplify usage of Microsoft Graph Toolkit components and avoid having to implement workarounds. The library wraps all components and exports them as React components. 

### Install the library
Add the library to your project using:

```bash
npm install @microsoft/mgt-react
```
or
```bash
yarn add @microsoft/mgt-react
```
### Using components

All the Microsoft Graph Toolkit components are available in the library. The names of the React components are in PascalCase and do not include the `Mgt` prefix. For example, the `mgt-person` component is available as `Person`, and the `mgt-people-picker` component is available as `PeoplePicker`.

To use the components, first import the Toolkit in your application; `mgt-react` does not import the components automatically.

```jsx
import '@microsoft/mgt'
```
Now, you can import and use any of the components as regular React components. For example, to use the [Person component](../components/person.md), import it at the top of your file:

```jsx
import { Person } from 'mgt-react';
```
and now, you can use `Person` anywhere in your JSX.

#### Use properties instead of attributes

For example, you can set the `personDetails` property to an object:

```jsx
const App = (props) => {
  const personDetails = {
    displayName: 'Bill Gates',
  };

  return <Person personDetails={personDetails}></Person>;
};
```

#### Register event handlers

```jsx
import { PeoplePicker } from 'mgt-react';

const App = (props) => {
  handleSelectionChanged = (e) => {
    this.setState({ people: e.target.selectedPeople });
  };

  return <PeoplePicker selectionChanged={this.handleSelectionChanged} />;
};
```
All properties and events map exactly as they are defined on the web component.

#### Templates

All Microsoft Graph Toolkit components support [custom templates](../templates.md), which allow you to modify the content of a component. `mgt-react` allows you to use React to write templates for Microsoft Graph Toolkit components.

First, define a React component that uses the `MgtTemplateProps` object as its type of props, then use it as a child of the wrapped component.

For example, to create a template to be used for rendering events in the `mgt-agenda` component, first define a component to be used for rendering an event:
```jsx
import { MgtTemplateProps } from 'mgt-react';

const MyEvent = (props: MgtTemplateProps) => {
  const { event } = props.dataContext;
  return <div>{event.subject}</div>;
};
```
Then use it as a child of the wrapped `Agenda` component and set the template prop to `event`:
```jsx
import { Agenda } from 'mgt-react';

const App = (props) => {
  return <Agenda>
    <MyEvent template="event">
  </Agenda>
}
```

The `template` prop allows you to specify which template to overwrite. In this case, the `MyEvent` component will be repeated for every event, and the `event` object will be passed as part of the `dataContext` prop.

## Next steps
- Check out this step-by-step tutorial on [building a React app](https://developer.microsoft.com/graph/blogs/a-lap-around-microsoft-graph-toolkit-day-13-using-microsoft-graph-toolkit-with-react/).
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Stack Overflow](https://aka.ms/mgt-question).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt).
