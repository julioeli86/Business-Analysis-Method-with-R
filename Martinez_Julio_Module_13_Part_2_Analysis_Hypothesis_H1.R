#GetData

MtzData <- Mtz_RAW_DATA
View(MtzData)

class(MtzData$ManagementType)
class(MtzData$Oversupply)
class(MtzData$GrowthRate)
class(MtzData$Diet)
class(MtzData$LivingSpace)
class(MtzData$DSOP)

#Single Hipotesis significance tests of Hypothesis (H1): The reduction of hog processing capacity negatively impacted the implementation of the swine farm's daily standard operating procedures (SOPs).
#Use linear model

x <- MtzData$'Oversupply'
y <- MtzData$'DSOP'

linearMod <- lm(y~x, data=MtzData)
linearMod
summary(linearMod)


