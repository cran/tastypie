## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, warning=FALSE, message=FALSE, echo=FALSE, dpi = 400, fig.align = "center", out.width="75%", out.height="75%"----
library(tastypie)
survdata <- read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vSAK7o0aJ0N7OWfMSHbV6CydNsq7In8f3XejxqgNiLHeewFtvp5ANQwkKHbRuSbHPjJjjx9GpMuKplO/pub?gid=1813199213&single=true&output=csv")
a <- table(survdata[,2])
a <- data.frame(a)
pie_bake(a, template = "donut1", perc = TRUE, title = "Which is your favorite template?",
         group_name = "Template:")

