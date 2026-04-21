library(dm)
library(RMariaDB)

con <- dbConnect(
  RMariaDB::MariaDB(),
  dbname   = "cs6400_sp26_team015",
  host     = "127.0.0.1",
  port     = 3306,
  user     = "team015",
  password = "gatech123"
)

schema <- dm_from_con(con, learn_keys = TRUE)

graph <- dm_draw(schema,
        view_type = "all",
        graph_attrs = "rankdir = 'LR', nodesep = 1.0, ranksep = 2.0",
        font_size = c(header = 16, column = 12))

svg_text <- export_svg(graph)
writeLines(svg_text, "schema.svg")
