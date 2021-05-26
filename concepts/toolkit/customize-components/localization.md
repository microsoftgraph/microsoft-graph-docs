---
title: "Localizing the Microsoft Graph Toolkit components"
description: "Use LocalizationHelper to localize Microsoft Graph Toolkit components."
localization_priority: Normal
author: vogtn
---

# Localizing the Microsoft Graph Toolkit components

Localization is an important aspect of application development to support users with various language requirements globally.

You can localize the Microsoft Graph Toolkit components to ensure that the UI reflects the target language.

## Use LocalizationHelper to add localized strings

None of the strings in the toolkit are localized, but you can provide your own localized strings and manage different languages through the same process you use for localizing your app. To facilitate localization, the toolkit exposes the `LocalizationHelper` static class.

The following example shows how to localize several components.

```ts
import { LocalizationHelper } from "@microsoft/mgt";

LocalizationHelper.strings = {
  noResultsFound: "لم نجد أي قنوات",
  _components: {
    "login": {
      signInLinkSubtitle: "login",
      signOutLinkSubtitle: "خروج",
    },
    "people-picker": {
      inputPlaceholderText: "ابدأ في كتابة الاسم",
      noResultsFound: "لم نجد أي قنوات", // will overwrite globally defined noResultsFound in people-picker component
      loadingMessage: "...جار التحميل",
    },
    "teams-channel-picker": {
      inputPlaceholderText: "حدد قناة",
      noResultsFound: "local NoResultsFound Example",
      // loadingMessage: is default string "Loading..." for this example since not defined globally or locally
    },
    "tasks": {
      removeTaskSubtitle: "delete",
      cancelNewTaskSubtitle: "canceltest",
      newTaskPlaceholder: "newTaskTest",
      addTaskButtonSubtitle: "addme",
    },
    "person-card": {
      sendEmailLinkSubtitle: "ارسل بريد الكتروني",
      startChatLinkSubtitle: "ابدأ الدردشة",
      showExpandedDetailsButton: 'Show expanded details',
      showMoreSectionButton: "أظهر المزيد", // global declaration
    },
    "person-card-contact": {
      contactSectionTitle: "اتصل",
    },
    "person-card-organization": {
      reportsToSectionTitle: "تقارير ل",
      directReportsSectionTitle: "تقارير مباشرة",
      organizationSectionTitle: "منظمة",
      youWorkWithSubSectionTitle: "انت تعمل مع",
      userWorksWithSubSectionTitle: "يعمل مع",
    },
  },
};
```

When the `strings` property of `LocalizationHelper` is assigned, all components will automatically pick up the new strings and re-render, allowing you to change strings dynamically. 

The strings can be set at a global level or per component (with the `_components:` property).

## Strings

### Login

```ts
"login": {
  signInLinkSubtitle: "Sign In",
  signOutLinkSubtitle: "Sign Out"
}
```

### People-Picker

```ts
"people-picker": {
  inputPlaceholderText: "Start typing a name",
  noResultsFound: `We didn't find any matches.`,
  loadingMessage: "Loading..."
}
```

### Teams-Channel-Picker

```ts
"teams-channel-picker": {
  inputPlaceholderText: "Select a channel",
  noResultsFound: `We didn't find any matches.`,
  loadingMessage: "Loading..."
}
```

### Tasks

```ts
"tasks": {
  removeTaskSubtitle: "Delete Task",
  cancelNewTaskSubtitle: "cancel",
  newTaskPlaceholder: "Task...",
  addTaskButtonSubtitle: "Add"
}
```

### Tasks-Base

```ts
"tasks-base": {
  removeTaskSubtitle: "Delete Task",
  cancelNewTaskSubtitle: "cancel",
  newTaskPlaceholder: "Task...",
  addTaskButtonSubtitle: "Add"
}
```

### Todo

```ts
"todo": {
  removeTaskSubtitle: "Delete Task",
  cancelNewTaskSubtitle: "cancel",
  newTaskPlaceholder: "Task...",
  addTaskButtonSubtitle: "Add"
}
```

### Person-Card

```ts
"person-card": {
  sendEmailLinkSubtitle: "Send email",
  startChatLinkSubtitle: "Start chat",
  showMoreSectionButton: "Show more"
}
```

### Person-Card-Contact

```ts
"person-card-contact": {
  contactSectionTitle: "Contact"
}
```

### Person-Card-Organization

```ts
"person-card-organization": {
  reportsToSectionTitle: "Reports to",
  directReportsSectionTitle: "Direct reports",
  organizationSectionTitle: "Organization",
  youWorkWithSubSectionTitle: "You work with",
  userWorksWithSubSectionTitle: "works with"
}
```

### Person-Card-Messages

```ts
"person-card-messages": {
  emailsSectionTitle: "Emails"
}
```

### Person-Card-Files

```ts
"person-card-files": {
  filesSectionTitle: "Files",
  sharedTextSubtitle: "Shared"
}
```

### Person-Card-Profile

```ts
"person-card-profile": {
  SkillsAndExperienceSectionTitle: "Skills & Experience",
  AboutCompactSectionTitle: "About",
  SkillsSubSectionTitle: "Skills",
  LanguagesSubSectionTitle: "Languages",
  WorkExperienceSubSectionTitle: "Work Experience",
  EducationSubSectionTitle: "Education",
  professionalInterestsSubSectionTitle: "Professional Interests",
  personalInterestsSubSectionTitle: "Personal Interests",
  birthdaySubSectionTitle: "Birthday",
  currentYearSubtitle: "Current"
}
```

### File

```ts
'file': {
  modifiedSubtitle: 'Modified',
  sizeSubtitle: 'Size'
};
```

### File-List

```ts
"file-list": {
  showMoreSubtitle: 'Show more items'
}
```
