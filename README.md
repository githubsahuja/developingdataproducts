#### Coursera Course 9 - Developing Data Products
#### Peer Assessment: Create Shiny Application

# Introduction

This application has been generated part of Peer Assessment for the Course 9 - Developing Data Products.For the assignment we have a shiny application that fits a linear model to the data and predicts aggregate personal savings based on four predictors. The applications then plots the predicted value against the data to show how changing the four predictors impact the outcome. 

# Description

For this application we utilize <b>LifeCycleSavings</b> dataset that comes with R. Details of the dataset can be found [here](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/LifeCycleSavings.html). 

Under the life-cycle savings hypothesis as developed by Franco Modigliani, the savings ratio (aggregate personal saving divided by disposable income) is explained by per-capita disposable income, the percentage rate of change in per-capita disposable income, and two demographic variables: the percentage of population less than 15 years old and the percentage of the population over 75 years old. The data are averaged over the decade 1960–1970 to remove the business cycle or other short-term fluctuations.

The data, as mentioned, provides us aggregate personal savings (sr) in 50 countries over ten years, as predicted by four predictors - 
* the percentage of population over 15 years (pop15),
* the percentage of population over 75 years old (pop75), 
* per-capita disposable income (dpi), and 
* the growth rate in per-capita disposable income (ddpi)

# Details

For the assignement we use linear regression to generate a model that best fits the the data [LifeCycleSavings](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/LifeCycleSavings.html). We then utilize this model to predict the values of aggregate personal savings based on the four predictors as input. We then show the predicted value of the outcome against the original data, the user can then manipulate ths sliders on the left panel (for the four predictors) and see its impact on the outcome. 

# Running the application

* Launch the application: [DevelopingDPShinyApp](https://githubsahuja.shinyapps.io/DevelopingDPShinyApp/).<br>In case that hyperlink does not work, here is the direct link to application:<br><pre> https://githubsahuja.shinyapps.io/DevelopingDPShinyApp/ 
* Modify the predictors on the left panel
* See the predicted value as first bin (orange color) in the bar chart and compare to other nations

# Reproducible Pitch Presentation

* Presentation is located in this repository: `DevelopingDPShinyApp_RPres`
* Link to presentation for viewing in browser: [DevelopingDPShinyApp_RPres](http://githubsahuja.github.io/developingdataproducts/DevelopingDPShinyApp_RPres.html).<br>In case that hyperlink does not work, here is the direct link to application:<br><pre> http://githubsahuja.github.io/developingdataproducts/DevelopingDPShinyApp_RPres.html