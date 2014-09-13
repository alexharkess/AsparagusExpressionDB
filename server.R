library(shiny)
library(deSolve)
library(cummeRbund)
 
cuff = readCufflinks()
 
shinyServer(function(input,output) {
    
	getData = reactive({
		if (!nzchar(input$gene))
			return()
		return(getGene(cuff,input$gene))
	})
	
	output$genePlot  = renderPlot( { 
		myGene = getData()
		if (is.null(myGene))
	  return(plot(1,type="n",bty="n",yaxt="n",xaxt="n",ylab="",xlab=""))
	  
	   output$value <- renderPrint({ input$checkbox })
		genetmp<-expressionPlot(myGene,replicates=TRUE)
		return(genetmp + labs(title="") + xlab("") + theme(legend.position="none",axis.text=element_text(size=14) ))
		
	})  
	
	
 
})
