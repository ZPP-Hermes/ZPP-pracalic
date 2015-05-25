ruleObier = apriori(koszykObier, parameter = list(supp = 0.0002, conf = 0.73, minlen = 2, target = "rules", originalSupport = FALSE), appearance = NULL, control = list(sort = -1))

ruleObier = sort(ruleObier, decreasing = T, by = "lift")
