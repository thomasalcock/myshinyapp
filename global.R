
# global.R ----------------------------------------------------------------

library(dplyr)
library(shiny)
library(devtools)
library(janitor)
library(shinydashboard)
library(shinydashboardPlus)
library(dashboardthemes)
library(DT)
library(httr)
library(jsonlite)

# load data ---------------------------------------------------------------
source("R/functions.R")

# load custom theme -------------------------------------------------------
#source("R/custom_theme.R")

# call ui -----------------------------------------------------------------
source("ui.R", local = TRUE)$value

# call server -------------------------------------------------------------
source("server.R", local = TRUE)$value