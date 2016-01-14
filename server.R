#Segundo Semestre
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {
  
output$Diciembre<-renderPrint({
  y<-input$select
  paste(y,round(a_matrix_Diciembre[y,y], digits=4))
})

output$Diciembre2<-renderPrint({
  y<-input$select2
  paste(y,round(a_matrix_Diciembre[y,y], digits=4))
})

output$confidenceDiciembre<-renderPrint({
  x<-input$select
  y<-input$select2
  paste("Confidence",round(a_matrix_Diciembre[x,y]/a_matrix_Diciembre[x,x], digits=4))
})

output$liftDiciembre<-renderPrint({
  x<-input$select
  y<-input$select2
  paste("Lift",round(round(a_matrix_Diciembre[x,y], digits=4)/(round(a_matrix_Diciembre[x,x], digits=4)*round(a_matrix_Diciembre[y,y], digits=4)), digits=4))
})

output$tablanamecat1Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

output$tablaprobcat1Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select,
                               select=c(Diciembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[1], digits=4))
})

output$tablanamecat2Diciembre<-renderText({
  
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

output$tablaprobcat2Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[2], digits=4))
})

output$tablanamecat3Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

output$tablaprobcat3Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste(round(t[3], digits=4))
})

output$tablanamecat4Diciembre<-renderText({
  
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:4){
    nam[i]<-names(t[i])
  }
  paste( names(t[4]))
})

output$tablaprobcat4Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  paste( round(t[4], digits=4))
})

output$tablanamecat5Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[5]))
})

output$tablaprobcat5Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste(round(t[5], digits=4))
})


output$tabla1namecat1Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select2,
                               select=c(Diciembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

output$tabla1probcat1Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select2,
                               select=c(Diciembre.CATEGORIA1)))    
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste(round(t[1], digits=4))
})

output$tabla1namecat2Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select2,
                               select=c(Diciembre.CATEGORIA1)))    
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

output$tabla1probcat2Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select2,
                               select=c(Diciembre.CATEGORIA1)))    
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste(round(t[2], digits=4))
})

output$tabla1namecat3Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select2,
                               select=c(Diciembre.CATEGORIA1)))    
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

output$tabla1probcat3Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select2,
                               select=c(Diciembre.CATEGORIA1)))    
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[3], digits=4))
})

output$tabla1namecat4Diciembre<-renderText({
  
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select2,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:4){
    nam[i]<-names(t[i])
  }
  paste( names(t[4]))
})

output$tabla1probcat4Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select2,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  paste( round(t[4], digits=4))
})

output$tabla1namecat5Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select2,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[5]))
})

output$tabla1probcat5Diciembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                               Diciembre.Categoriaf3==input$select2,
                               select=c(Diciembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste(round(t[5], digits=4))
})


})


#Diciembre
catg_Diciembre<-data.frame(Diciembre$CATEGORIA1,
                           Diciembre$Categoriaf3,
                           Diciembre$SLSEQ, Diciembre$TICKET)

catg_sin_rep_Diciembre<-unique(catg_Diciembre)
