## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----fig.align = "center", out.width="75%", out.height="75%"------------------
library(tastypie)
ex <- data.frame(
  LETTERS[1:5],
  c(65, 24, 54, 12, 43)
)

for(i in pie_template_list){
  print(pie_bake(ex, template = i, perc = TRUE, title = i))
}

## ---- fig.align = "center", out.width="75%", out.height="75%"-----------------
ex <- data.frame(
  LETTERS[1:5],
  c(65, 24, 54, 12, 43)
)

for(i in pie_template_list_pro){
  print(pie_bake_pro(ex, template = i, title = i))
}

