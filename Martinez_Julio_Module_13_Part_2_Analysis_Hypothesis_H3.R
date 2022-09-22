#GetData

MtzData <- Mtz_RAW_DATA
View(MtzData)

class(MtzData$ManagementType)
class(MtzData$Oversupply)
class(MtzData$GrowthRate)
class(MtzData$Diet)
class(MtzData$LivingSpace)
class(MtzData$DSOP)

#Single Hipotesis significance tests of Hypothesis (H3): A team of swine nutritionists and veterinary resources helped to manage the oversupply of ready pigs to market at the swine farming operation under production contract.
x <- MtzData$'ManagementType'
y <- MtzData$'Diet'

linearMod <- lm(y~x, data=MtzData)
linearMod
summary(linearMod)


