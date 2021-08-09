NEI <- readRDS("C:\\Education\\R programming\\exdata_data_NEI_data\\summarySCC_PM25.rds")
SCC <- readRDS("C:\\Education\\R programming\\exdata_data_NEI_data\\Source_Classification_Code.rds")

png(filename = "plot4.png")
coal<-SCC[grepl("Coal",SCC$Short.Name),]
mergedata<-merge(coal,NEI,by.x="SCC",all=FALSE)
agg<-aggregate(mergedata$Emissions,by=list(mergedata$year),FUN = sum)
plot(agg$Group.1,agg$x,"b",xlab = "year",ylab = "Total emissions",main="Dynamic of emissions")
dev.off()
