#inigo.com****************************************************************************
library(xml2)
library(rvest)

url <- "https://www.unigo.com/colleges/mountain-view-college/"

N_pages <- 10
A <- NULL
for (j in 1: N_pages){
  pant <- read_html(paste0(url, j)) 
  B <- cbind(pant %>% html_nodes(".show-on-open>p") %>%     html_text()     )
  A <- rbind(A,B)
}

tail(A)
unigo_reviews <- A
unigo_reviews

write.table(unigo_reviews, "E:/R/mvc/unigo_reviews2.txt", sep="\t/\\r\n", col.names = F, row.names = F, quote = FALSE)

pathname <- read.delim2(file = "E:/R/mvc/unigo_reviews2.txt", header = FALSE, sep = "\t", dec = ",")
pathname

#NEXT SET OF REVIEWS***************************************************************************************************
library(xml2)
library(rvest)

url <- "https://www.ratemyprofessors.com/campusRatings.jsp?sid=2501"

pg <- read_html(url)

pg %>%
  html_nodes(xpath='//*[@id="mainContent"]/div[1]/div[7]/div[1]/table') %>%
  html_text()

pg %>%
  html_nodes(".comments>p") %>%
  html_text()

write.table(pg, "E:/R/ratemyprofessor_reviews.txt", sep="\t/\\r\n", col.names = F, row.names = F, quote = FALSE)

pathname <- read.delim2(file = "E:/R/ratemyprofessor_reviews.txt", header = FALSE, sep = "\t", dec = ",")
pathname


library(xml2)
library(rvest)

url <- "https://www.ratemyprofessors.com/campusRatings.jsp?sid=2501"

pg <- read_html(url)

N_pages <- 1
A <- NULL
for (j in 1: N_pages){
  pant <- read_html(paste0(pg, j)) 
  B <- cbind(pant %>% html_nodes(".comments>p") %>%     html_text()     )
  A <- rbind(A,B)
}

tail(A)
ratemyprofessor_reviews <- A
ratemyprofessor_reviews

write.table(unigo_reviews, "E:/R/ratemyprofessor_reviews.txt", sep="\t/\\r\n", col.names = F, row.names = F, quote = FALSE)

pathname <- read.delim2(file = "E:/R/ratemyprofessor_reviews.txt", header = FALSE, sep = "\t", dec = ",")
pathname




library(XML)

url <- "https://www.ratemyprofessors.com/campusRatings.jsp?sid=2501"

url.table = readHTMLTable(url, header=T, which=1,stringsAsFactors=F)
url.table

library("rvest")
url <- "https://www.ratemyprofessors.com/campusRatings.jsp?sid=2501"
population <- url %>%
  read_html() %>%
  html_nodes(xpath='//*[@id="mainContent"]/div[1]/div[7]/div[1]/table') %>%
  html_table()
population

#ratemyprofessor.com***************************************************************
library(xml2)
library(rvest)

url <- "https://www.ratemyprofessors.com/campusRatings.jsp?sid=2501"

pg <- read_html(url)

N_pages <- 1
A <- NULL
for (j in 1: N_pages){
  pant <- read_html(paste0(pg, j)) 
  B <- cbind(pant %>% html_nodes(".comments>p") %>%     html_text()     )
  A <- rbind(A,B)
}

tail(A)
ratemyprofessor_reviews <- A
ratemyprofessor_reviews

write.table(unigo_reviews, "E:/R/ratemyprofessor_reviews.txt", sep="\t/\\r\n", col.names = F, row.names = F, quote = FALSE)

pathname <- read.delim2(file = "E:/R/ratemyprofessor_reviews.txt", header = FALSE, sep = "\t", dec = ",")
pathname

#indeed.com************************************************************************
library(xml2)
library(rvest)

url <- "https://www.indeed.com/cmp/Mountain-View-College/reviews?start="

N_pages <- 3
A <- NULL
for (j in 10: N_pages){
  pant <- read_html(paste0(pg, j*2)) 
  B <- cbind(pant %>% html_nodes(".cmp-review-text") %>%     html_text()     )
  A <- rbind(A,B)
}

tail(A)
indeed_reviews <- A
indeed_reviews

write.table(indeed_reviews, "E:/R/mvc/indeed_reviews.txt", sep="\t/\\n", col.names = F, row.names = F, quote = FALSE)

pathname <- read.delim2(file = "E:/R/mvc/indeed_reviews.txt", header = FALSE, sep = "\t", dec = ",")
pathname

#*************************************************************************************
<table class="table table-bordered table-xsmallFirstColumn reviewsTable" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating">

library(xml2)
library(rvest)

url <- "https://my.cappex.com/page/collegeProfile30/reviews.jsp?collegeID=226930#!/group/0"

N_pages <- 2
A <- NULL
for (j in 1: N_pages){
  pant <- read_html(paste0(pg, j)) 
  B <- cbind(pant %>% html_nodes(xpath = '//*[@id="displayreview83137_anchor"]/table') %>%     html_text()     )
  A <- rbind(A,B)
}

tail(A)
reviews <- A
reviews

write.table(indeed_reviews, "E:/R/mvc/indeed_reviews.txt", sep="\t/\\n", col.names = F, row.names = F, quote = FALSE)

pathname <- read.delim2(file = "E:/R/mvc/indeed_reviews.txt", header = FALSE, sep = "\t", dec = ",")
pathname

#***********************************************************************

