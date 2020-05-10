#* @param price
#* @param rating
#* @param reviews
#* @param questions
#* @param weight
#* @get /getCluster

function(price, rating, reviews, questions, weight){
  campos = as.vector(data[1,])
  data[1,]
  
  # Matriz clusters, etiquetas
  midist = matrix(0, ncol=8, nrow=5)
  
  for (i in 1:5) {
    c = dist(x=c(campos[i], cluster$centers[,i]))
    b=as.matrix(c)
    distancia = b[-1,1]
    midist[i,] = distancia
  }
  
  colnames(cluster$centers)
  
  rownames(midist) = c("price","rating","reviews","questions","weight")
  midist
  
  dist_total = apply(midist,2,sum)
  dist_total
  num_cluster_min = which.min(dist_total)
  num_cluster_min
}
