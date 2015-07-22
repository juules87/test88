test88<-function(x){
  library(RMySQL) 
  con<-dbConnect()
  query<-paste("select max(Visitors) from deata_data.data where Userid='",x,"'",sep="" )
  result<-dbSendQuery(con,query)
  y<-fetch(result)[1,1]
  y
}
