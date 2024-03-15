orderly2::orderly_strict_mode()
orderly2::orderly_resource("data.csv")
orderly2::orderly_artefact("Processed data", "data.rds")

d <- read.csv("data.csv")
d$z <- resid(lm(y ~ x, d))
saveRDS(d, "data.rds")
