#GetData

MtzData <- Mtz_RAW_DATA
View(MtzData)

class(MtzData$ManagementType)
class(MtzData$Oversupply)
class(MtzData$GrowthRate)
class(MtzData$Diet)
class(MtzData$LivingSpace)
class(MtzData$DSOP)

#Single Hypothesis significance tests of Hypothesis (H2): A swine farming operation under production contract was positively associated with a better emergency plan to reestablish business continuity and daily standard operating procedures (SOPs) at the swine farm.
#Use linear Model

x <- MtzData$'ManagementType'
y <- MtzData$'DSOP'

linearMod <- lm(y~x, data=MtzData)
linearMod
summary(linearMod)


