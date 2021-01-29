---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationRubric educationRubric = new EducationRubric();
educationRubric.displayName = "Example Points Rubric";
EducationItemBody description = new EducationItemBody();
description.content = "This is an example of a rubric with points";
description.contentType = BodyType.TEXT;
educationRubric.description = description;
LinkedList<RubricLevel> levelsList = new LinkedList<RubricLevel>();
RubricLevel levels = new RubricLevel();
levels.displayName = "Good";
EducationItemBody description1 = new EducationItemBody();
description1.content = "";
description1.contentType = BodyType.TEXT;
levels.description = description1;
EducationAssignmentPointsGradeType grading = new EducationAssignmentPointsGradeType();
grading.maxPoints = 2;
levels.grading = grading;
levelsList.add(levels);
RubricLevel levels1 = new RubricLevel();
levels1.displayName = "Poor";
EducationItemBody description2 = new EducationItemBody();
description2.content = "";
description2.contentType = BodyType.TEXT;
levels1.description = description2;
EducationAssignmentPointsGradeType grading1 = new EducationAssignmentPointsGradeType();
grading1.maxPoints = 1;
levels1.grading = grading1;
levelsList.add(levels1);
educationRubric.levels = levelsList;
LinkedList<RubricQuality> qualitiesList = new LinkedList<RubricQuality>();
RubricQuality qualities = new RubricQuality();
EducationItemBody description3 = new EducationItemBody();
description3.content = "Argument";
description3.contentType = BodyType.TEXT;
qualities.description = description3;
LinkedList<RubricCriterion> criteriaList = new LinkedList<RubricCriterion>();
RubricCriterion criteria = new RubricCriterion();
EducationItemBody description4 = new EducationItemBody();
description4.content = "The essay's argument is persuasive.";
description4.contentType = BodyType.TEXT;
criteria.description = description4;
criteriaList.add(criteria);
RubricCriterion criteria1 = new RubricCriterion();
EducationItemBody description5 = new EducationItemBody();
description5.content = "The essay's argument does not make sense.";
description5.contentType = BodyType.TEXT;
criteria1.description = description5;
criteriaList.add(criteria1);
qualities.criteria = criteriaList;
qualities.weight = 50.0;
qualitiesList.add(qualities);
RubricQuality qualities1 = new RubricQuality();
EducationItemBody description6 = new EducationItemBody();
description6.content = "Spelling and Grammar";
description6.contentType = BodyType.TEXT;
qualities1.description = description6;
LinkedList<RubricCriterion> criteriaList1 = new LinkedList<RubricCriterion>();
RubricCriterion criteria2 = new RubricCriterion();
EducationItemBody description7 = new EducationItemBody();
description7.content = "The essay uses proper spelling and grammar with few or no errors.";
description7.contentType = BodyType.TEXT;
criteria2.description = description7;
criteriaList1.add(criteria2);
RubricCriterion criteria3 = new RubricCriterion();
EducationItemBody description8 = new EducationItemBody();
description8.content = "The essay has numerous errors in spelling and/or grammar.";
description8.contentType = BodyType.TEXT;
criteria3.description = description8;
criteriaList1.add(criteria3);
qualities1.criteria = criteriaList1;
qualities1.weight = 50.0;
qualitiesList.add(qualities1);
educationRubric.qualities = qualitiesList;
EducationAssignmentPointsGradeType grading2 = new EducationAssignmentPointsGradeType();
educationRubric.grading = grading2;

graphClient.education().me().rubrics()
	.buildRequest()
	.post(educationRubric);

```