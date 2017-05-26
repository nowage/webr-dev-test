
### 입력변수에 따라 분석 및 plot 여러 개 나오게 하기


if (interactive()){
  library(shiny)
  library(moonBook)
  ### ui
  ui <- fluidPage(
    titlePanel("Multiple Regression Analysis"),

    sidebarLayout(

      sidebarPanel(
        radioButtons("dataset", h5("Select data"), choices = c("mtcars","iris","acs","radial")),
        uiOutput('dv'),  # dependent variable(종속변수)
        uiOutput('iv'),  # independent variable(독립변수)
        actionButton("analysis", "Analysis")   # 실행버튼
      ),

      mainPanel(
        checkboxInput("check", "show data.table", F),
        conditionalPanel(condition = "check == T", tableOutput("view") ),  # 체크 시 데이터시트 출력
        verbatimTextOutput("modelsummary"),
        plotOutput("plot")
        )
      )
    )


    ### server
    server <-  shinyServer(function(input, output) {

      datasetInput <- reactive({
        switch(input$dataset, "mtcars"=mtcars, "iris"=iris, "acs"=acs, "radial"=radial)
      })

      # 종속변수
      output$dv = renderUI({
        selectInput("dv", h5("Response Variable(종속변수)"), choices = names(datasetInput()))
      })

      # 독립변수
      output$iv = renderUI({
        selectizeInput("iv", h5("Explanatory Variable(s)(독립변수)"), choices = names(datasetInput()),
                       multiple=T)   # 다중선택 기능
      })

      # 실행버튼
      observeEvent( input$analysis, {

        # 회귀분석 공식 (다중회귀)
        regFormula <- reactive({
          as.formula(paste(input$dv, '~', paste(input$iv, collapse ='+')))
        })

        # 회귀분석 모형
        model <- reactive({
          lm(regFormula(), data = datasetInput())
        })


        ## 결과 출력 ##
        # 데이터시트
        output$view <- renderTable({
          if(input$check == T){head(datasetInput())}
        })


        ########## 각 독립변수에 대한 plot 연동 남음

        # 산점도
        output$plot <- renderPlot({
          plot(datasetInput()[,input$iv], datasetInput()[,input$dv], xlab = input$iv, ylab = input$dv, pch = 16, col = "black", cex = 1) # 산점도
          abline(lm(datasetInput()[,input$dv]~datasetInput()[,input$iv]), col="red", lwd = 2) # 추세선
        })

        # 요약표
        output$modelsummary <- renderPrint({
          summary(model())
        })
      })
    })

    shinyApp(ui, server)
}




