orderly2::orderly_strict_mode()
orderly2::orderly_dependency("incoming_data", "latest()",
                             c("incoming.rds" = "data.rds"))
orderly2::orderly_artefact("Analysis results", "analysis.png")

d <- readRDS("incoming.rds")
png("analysis.png")
plot(y ~ x, d)
dev.off()
