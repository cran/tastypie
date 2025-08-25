## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  dpi = 60
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

## ----fig.align = "center", out.width="75%", out.height="75%"------------------
ex <- data.frame(
  LETTERS[1:5],
  c(65, 24, 54, 12, 43)
)

for(i in pie_template_list_pro){
  print(pie_bake_pro(ex, template = i, title = i))
}

## ----fig.align = "center", out.width="75%", out.height="75%"------------------
exblow <- data.frame(
  LETTERS[1:8],
  c(33, 24, 54, 12, 43, 88, 66, 78)
)

available_templates_bub <- c("bub1", "bub2", "bub3", "bub4", "bub5")

for(i in available_templates_bub){
  print(bubble_blow(exblow, template = i, perc = "below", title = i))
}

## -----------------------------------------------------------------------------
img1 <- jpeg::readJPEG(system.file("img", "logo.jpeg", package="tastypie"))
img2 <- jpeg::readJPEG(system.file("img", "parents.jpeg", package="tastypie"))
img3 <- jpeg::readJPEG(system.file("img", "bob.jpeg", package="tastypie"))
img4 <- jpeg::readJPEG(system.file("img", "mark.jpeg", package="tastypie"))
imgs <- list(img1,img2,img3, img4)

## -----------------------------------------------------------------------------
df <- data.frame(
  c("Mark fan", "My friend", "Tastypie logo", "My parents"),
  c(300, 250, 225, 325)
)
mypie <- pie_bake(df, template = "basic1")

## ----fig.align = "center", out.width="75%", out.height="75%", dpi = 100-------
pie_addimages(
  mypie = mypie,
  imglist = imgs,
  perc = "below",
  lbl_col = "red",
  border_col = "grey"
) 

