# Package Installation and loading
install.packages("rvest")
library("rvest")

# Extract the html content of URL
content = read_html("https://news.ycombinator.com/")

title = content %>% html_nodes("a.storylink") %>% html_text()

df = data.frame(title = title)
  