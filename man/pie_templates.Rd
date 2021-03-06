% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pie_templates.R
\name{pie_templates}
\alias{pie_templates}
\title{Display an example of a particular template}
\usage{
pie_templates(template, n_groups = 4, perc = FALSE)
}
\arguments{
\item{template}{The chosen template.}

\item{n_groups}{A number from 2 to 9.}

\item{perc}{A logical value. Should the proportions be displayed?\cr
Note that if the selected template is one of those to be used with
\code{\link{pie_bake_pro}} (listed in the \code{pie_template_list_pro} vector),
this argument is useless.}
}
\value{
A ggplot object.
In particular, this function returns a pie (or similar) chart according to the
choice of template and the other specifications provided.
}
\description{
This function allows to user to display a pie chart by selecting the template,
the number of groups of interest and whether to display the proportions or not,
in order to make it easier to choose between the many templates available in the
package \code{tastypie}.
}
\examples{
pie_templates(template = "bw1", n_groups = 3, perc = TRUE)
pie_templates(template = "watermelon2", n_groups = 8)
}
\seealso{
See all the available templates displayed
\href{https://paolodalena.github.io/tastypie/articles/available_templates.html}{here}!
}
