# "2022-01-01" -> Janeiro

lubridate::month("", label = TRUE, abbr = FALSE)

"2022-3-01" |>
  lubridate::month() |>
  numero_para_mes() |>
  stringr::str_to_title()

numero_para_mes <- function(num_mes) {
  c(
    "janeiro",
    "fevereiro",
    "março",
    "abril",
    "maio",
    "junho",
    "julho",
    "agosto",
    "setembro",
    "outubro",
    "novembro",
    "dezembro"
  )[num_mes]
}

