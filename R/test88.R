test88<-function(x){
  library(RMySQL) 
  con<-dbConnect(MySQL(),user='deata',password='Welkom22',dbname='deata_data',host='149.210.144.46',port=3306)
  query<-paste("select max(Visitors) from deata_data.data where Userid='",x,"'",sep="" )
  result<-dbSendQuery(con,query)
  y<-fetch(result)[1,1]
  y
}
