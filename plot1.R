NEI <- readRDS("C:\\Education\\R programming\\exdata_data_NEI_data\\summarySCC_PM25.rds")
SCC <- readRDS("C:\\Education\\R programming\\exdata_data_NEI_data\\Source_Classification_Code.rds")

png(filename = "plot1.png")
agg<-aggregate(NEI$Emissions,by=list(NEI$year),FUN = sum)
emissions_total<-agg$x
appropriate_years<-agg$Group.1
plot(appropriate_years,emissions_total,"b",xlab = "year",ylab = "Total emissions",main="Dynamic of emissions")
dev.off()
