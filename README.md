## Data Visualization With R & ggplot2

You can use the [editor on GitHub](https://github.com/aephidayatuloh/DataViz-Introggplot2/edit/master/README.md) to maintain and preview the content for your website in Markdown files.

```{r}
# install.packages("ggplot2")
library(ggplot2)
```

```{r}
ggplot(data, mapping = aes()) + geom
```

```{r}
ggplot(data = flights, mapping = aes(x = distance)) +
  geom_histogram()
```
