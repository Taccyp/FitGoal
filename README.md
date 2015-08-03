# FitGoal
basic fitness app

## How to Use the Nutritionix API

Hints at how to use the Nutritionix API are provided in the test_api_1_1.rb file.  We've now taken this model to create a class called FitGoal which has the ability to query the Nutritionix database.

### Installation

The Nutritionix API should live in the lib directory as three files: nutritionix.rb, nutritionix/api_1_1.rb, nutritionix/version.rb.

Next, we need to set the APP and API keys.  After registering for an API and APP key through the Nutritionix site, add the following environment variables to your .bash_profile:

```
export NUTRITIONIX_APP_ID=replace_with_your_app_id_here
export NUTRITIONIX_APP_KEY=replace_with_your_app_key_here
```

### FitGoal

You can then utilize the API through your code by including `fitgoal` elsewhere in your project.  Try the following IRB test:

```
load 'fitgoal.rb'
@a = FitGoal.new
@a.query("chocolate")
```

Use JSON parsing to work with this resultant data...  Good luck!