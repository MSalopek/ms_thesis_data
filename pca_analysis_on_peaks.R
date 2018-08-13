numbers = read.csv("cleanData_w_log_ccc.csv", h = FALSE)
head(numbers, 3)
num_only <- numbers[,2:47]
groups <- numbers[,1]
res.pca <- prcomp(num_only,
                 center = TRUE,
                 scale. = TRUE) 
plot(res.pca)
summary(res.pca)

library(ggbiplot)
g <- ggbiplot(res.pca, obs.scale = 1, var.scale = 1, var.axes = FALSE,
              groups = groups, ellipse = TRUE,
              circle = TRUE)

print(g)
