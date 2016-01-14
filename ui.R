library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria (Antecedente)", style ="color:#297418;"), 
                       choices =  vec_aux1[3:41]), tableOutput("Diciembre")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices =vec_aux1[3:41]), tableOutput("Diciembre2"))
  ),
  
  titlePanel("Diciembre"),
  sidebarLayout(
    sidebarPanel( "Resumen Diciembre",
                  style = "color:#2183dd;",
                  tableOutput("confidenceDiciembre"),
                  tableOutput("liftDiciembre")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1Diciembre"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1Diciembre"),
                  textOutput("tablanamecat2Diciembre"),
                  textOutput("tablaprobcat2Diciembre"),
                  textOutput("tablanamecat3Diciembre"),
                  textOutput("tablaprobcat3Diciembre"),
                  textOutput("tablanamecat4Diciembre"),
                  textOutput("tablaprobcat4Diciembre"),
                  textOutput("tablanamecat5Diciembre"),
                  textOutput("tablaprobcat5Diciembre")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1Diciembre"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1Diciembre"),
                  textOutput("tabla1namecat2Diciembre"),
                  textOutput("tabla1probcat2Diciembre"),
                  textOutput("tabla1namecat3Diciembre"),
                  textOutput("tabla1probcat3Diciembre"),
                  textOutput("tabla1namecat4Diciembre"),
                  textOutput("tabla1probcat4Diciembre"),
                  textOutput("tabla1namecat5Diciembre"),
                  textOutput("tabla1probcat5Diciembre"))
  )
  
  
  
))
