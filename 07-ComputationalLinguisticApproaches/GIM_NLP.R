# install.packages("NLP")
# install.packages("text2vec")
# install.packages("koRpus", type="source")
# install.packages("LDAvis")
# install.packages("topicmodels", type="source")
# library(NLP)
# library(text2vec)
# library(koRpus)
# library(LDAvis)
# install.packages(tm)

setwd("~/GitHub/Group-Informatics/Computational Linguistic Approaches")
# Build document term matrix
library(tm)

# Use DTM to build topic Model
library(topicmodels)

# Use Topic Model to explore data

library(LDAvis)

# Example
data("TwentyNewsgroups", package = "LDAvis")
str(TwentyNewsgroups)

# our data
responses <- read.csv(file="ScoresOnStudentResponses.csv")
# some rows do not have any scores / deal with .NA's 


# create DTM (Document Term Matrix)



# build topic model


#Visualize 

json <- with(TwentyNewsgroups, 
             createJSON(phi = phi, theta = theta, vocab = vocab,
                        doc.length = doc.length, term.frequency = term.frequency))

serVis(json, out.dir = "vis", open.browser = TRUE)
