---
title: "Student Data README.md"
author: "Sean P. Goggins"
date: "June 13, 2017"
output: pdf_document
---

```{r setup, include=FALSE, id:"j3vnhjqh"}
knitr::opts_chunk$set(echo = TRUE)
```

## Climate Data - 2 files
1. Forum : Each record is a post, author, thread, date and some other data
2. Read : A bunch of read records, with the username, threadID, timestamp. No postID

## MDL Forum Posts
1. Forum Data: PostID, ThreadID, ParentPostID, PostCreator and Timestamp for creation and modification are seperate fields.
2. There are now two files that work. One is reads. One is posts.
3. Unlike the sample data, the directed graph is not aggregated and weighted in advance.  
