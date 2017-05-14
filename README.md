#### Coursera Course 9 - Developing Data Products
#### Peer Assessment: Create Shiny Application

# Introduction

This application has been generated part of Peer Assessment for the Course 9 - Developing Data Products.For the assignment we have a shiny application and generates a prediction model based on the data provided to predict aggregate personal savings based on four predictors. The applications then plots the predicted value against the data to show how changing the four predictors impact the outcome. 

# Description

For this application we utilize <b>LifeCycleSavings<b> dataset that comes with R. Details of the dataset can be found <a href="https://vincentarelbundock.github.io/Rdatasets/doc/datasets/LifeCycleSavings.html">here</a>. 

Under the life-cycle savings hypothesis as developed by Franco Modigliani, the savings ratio (aggregate personal saving divided by disposable income) is explained by per-capita disposable income, the percentage rate of change in per-capita disposable income, and two demographic variables: the percentage of population less than 15 years old and the percentage of the population over 75 years old. The data are averaged over the decade 1960–1970 to remove the business cycle or other short-term fluctuations.

The data, as mentioned, provides us aggregate personal savings (sr) in 50 countries over ten years, as predicted by four predictors - 
* the percentage of young over 15 years (pop15),
* the percentage of old, people over 75 year old (pop75), 
* per-capita disposable income (dpi), and 
* the growth rate in per-capita disposable income (ddpi).

# Details

For the assignement we use linear regression to generate a model that best fits the the data (<a href="https://vincentarelbundock.github.io/Rdatasets/doc/datasets/LifeCycleSavings.html">LifeCycleSavings</a>). We then utilize this model to predict the values of aggregate personal savings based on the four predictors as input. We then show the predicted value of the outcome against the original data, the user can then manipulate ths sliders on the left panel (for the four predictors) and see its impact on the outcome. 

# Running the application

* Launch the application
* Modify the predictors on the left panel
* See the predicted value as first bin (orange color) in the bar chart