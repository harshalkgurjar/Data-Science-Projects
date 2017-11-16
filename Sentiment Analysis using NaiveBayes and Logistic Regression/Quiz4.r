states <- as.data.frame(
  state.x77[,c("Murder","Population",
               "Illiteracy", "Income", "Frost")])
dim(states)
t(states[1,])
dtrain <- states[1:25,]
dtest <- states[26:50,]
murderModel <- lm (Murder ~ Population + Illiteracy 
             + Income + Frost, data=dtrain)
summary (murderModel) 

##My code
library(car)
  
#Linearity:

crPlots(murderModel)

#Normality:

qqPlot(murderModel, labels=row.names(states), id.method="identify", simulate=TRUE, main=" qqPlot")


#Global validation using the gvlma library:

library(gvlma)

gvmodel <- gvlma(murderModel)

summary(gvmodel)

#Error/Noise:

durbinWatsonTest(murderModel)


#Homoscedasticity:

ncvTest(murderModel)


#Multicolinearity:

sqrt(vif(murderModel))

#Outliers:

outlierTest(murderModel)


#Model Complexity:
#Illiteracy and Population are the only significant attributes. So I created a model with only with these two attributes. It was giving a slightly improved value #for "Adjusted R-squared"
