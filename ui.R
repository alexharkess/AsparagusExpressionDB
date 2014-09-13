library(shiny)
 
# Define UI 
shinyUI(fluidPage(
  
  	responsive=FALSE,
  
  # Application title
	titlePanel("Asparagus Gene Expression DB"),
  
	sidebarLayout(
		textInput("gene", label="Gene (Example: evm_01.AsOf_scaffold943.1)", value = ""),
		submitButton("Submit"),

 	),	
	
	mainPanel(
		plotOutput("genePlot")
	)
	
))