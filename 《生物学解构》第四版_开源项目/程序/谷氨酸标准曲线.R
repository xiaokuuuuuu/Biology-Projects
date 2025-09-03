library(ggplot2)
concentration = c(8:14)*10
od=c(0.190,0.495,0.900,1.226,1.533,1.800,1.955)
data_std <- data.frame(concentration, od)
print(data_std)
p <- ggplot() + 
  geom_point(data = data_std, mapping = aes(x = concentration, y = od)) + 
  theme_bw()

lm <- lm(od~concentration, data = data_std)
data_aft <- data.frame(predict(lm, newdata = data.frame(concentration = concentration),
                                  interval = "confidence"),
                       concentration = concentration)
print(data_aft)

p+
  geom_line(data = data_aft, mapping = aes(x = concentration, y = fit),
            color = "red", linewidth = 1, alpha = 0.5) + 
  geom_ribbon(data = data_aft, mapping = aes(x = concentration,
                                             ymin = lwr, ymax = upr),
              fill = "grey", alpha = 0.5) +
  labs(x="",
       y="") + 
  theme(text = element_text(family = "serif"))

