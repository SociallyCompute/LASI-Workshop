rm(list=ls(all=TRUE))
library(igraph)

igraph.options(print.vertex.attributes = TRUE)
igraph.options(print.edge.attributes = TRUE)


rawPosts <- read.csv("mdl_forum_posts_scrubbed.csv")

# SQL That moves Raw posts to a network structure
# SELECT * INTO mdl_forum_posts_snadata FROM 
# (SELECT p2.id, p2.userid AS userid_from, p2.created, p1.userid AS userid_to   
#   FROM mdl_forum_posts p1 JOIN mdl_forum_posts p2 ON p2.parent = p1.id) data;

## Original Data
# id - row id for a specific post
# discussion - discussion forum id
# parent - is there a top level post that this is under
# userid - person
# created - timestamp of creation
# modified - timestamp of any modification 

## Read the network posts into a variable
networkPosts <- read.csv("mdl_forum_posts_scrubbed_snadata.csv")

## Create a smaller sample of one user's connections 
test <- subset(networkPosts, userid_to == 178920)

myVertices <- as.data.frame(cbind(unique(test$userid_from)), unique(test$userid_to))


## Create an iGraph dataframe frome the regular dataframe
myGraph <- 	graph.data.frame(test, directed=TRUE, vertices=myVertices)

## Set the labels. 
## This does not work, need to create a factor so 
## Numbers show up as strings
# V(myGraph)$label <- V(myGraph)$userid_to


E(myGraph)[[]]

## Plot the iGraph
plot.igraph(myGraph, vertex.label.dist=.6, vertex.label.cex=1, vertex.label.color="blue", 
            vertex.frame.color="white") 


