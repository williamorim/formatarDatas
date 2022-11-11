#' Formatar mês
#'
#' Formata uma data em um mês como número ou nome do mês.
#'
#' @param data Uma data ou uma string com uma data válida.
#' @param label Valor lógico. Se TRUE, retornará o nome do mês. Se FALSE,
#' o número.
#'
#' @return Se label = TRUE, retornará uma string. Se FALSE,
#' um número.
#'
#' @export
#'
formatar_mes <- function(data, label = TRUE) {
  if (label) {
    data |>
      lubridate::month() |>
      numero_para_mes() |>
      stringr::str_to_title()
  } else {
    data |>
      lubridate::month()
  }
}


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


