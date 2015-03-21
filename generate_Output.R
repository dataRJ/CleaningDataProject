generate_Means <- function(tidyData) {
        
        #Split Apply and Combine all in one shot
        results <- ddply(tidyData,.(Activity,Subject),numcolwise(mean))
        write.table(results,file="tidyData.txt",row.name=FALSE)
        
        results
}