\\ create an adjacency matrix from a pairwise list.
library(igraph)
s <- c('A','B','C')
d <- c('A','A','C')
g <- graph.edgelist(as.matrix(nn), directed=FALSE)
\\ directed can also be true.
a = get.adjacency(g)
\\
\\ result shown below
\\ 3 x 3 sparse Matrix of class "dgCMatrix"
\\
\\    A  B  C
\\ A  1  1  .
\\ B  1  .  .
\\ C  .  .  1
\\
\\ convert dgCMatrix to regular Matrix for data export.
b = as.matrix(a)
\\ save tab delimited file to Hard Drive
write.table(b, "C:\\b.csv", sep="\t")