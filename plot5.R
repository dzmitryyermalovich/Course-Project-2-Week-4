NEI <- readRDS("C:\\Education\\R programming\\exdata_data_NEI_data\\summarySCC_PM25.rds")
SCC <- readRDS("C:\\Education\\R programming\\exdata_data_NEI_data\\Source_Classification_Code.rds")

png(filename = "plot5.png")
Baltimore_City<-subset(NEI,fips == "24510" & NEI$type == "ON-ROAD")
agg<-aggregate(Baltimore_City$Emissions,by=list(Baltimore_City$year),FUN=sum)
plot(agg$Group.1,agg$x,"b",xlab = "year",ylab = "Total emissions",main="Dynamic of emissions")
dev.off()
