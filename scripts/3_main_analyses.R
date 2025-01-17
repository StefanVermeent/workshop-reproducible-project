data <- 
  tibble(
    condition = sample(c(-1,1), size = 1000, replace = T),
    iv = rnorm(1000, 0,1),
    dv = rnorm(1000, 0,1)
  )


fit <- lm(data = data, dv ~ iv*condition)


modelbased::estimate_means(fit, by = "condition", length = 2)



modelbased::estimate_slopes(fit, trend = "iv", by = "condition", length = 2)

x = ggeffects::ggpredict(fit, terms = c("iv [-1, 1]", "condition [-1, 1]"))
