#Cargar librerias ----
library("gtsummary")
library("readxl")
library("bstfun")
library("ggstatsplot")
library("report")
library("tidyverse")
library("ggstats")
library("ggsci")

#Cargar archivo ----
control <- read_csv ("control.csv")

#ORDENAR LOS VALORES DE RESPUESTA DE LAS SECCIONES: APROPIA, FLEXIBLE,ARTICULA, CONTEXTO, IMPLEMENTA----
control$apropia1 <- control$apropia1 %>%
  fct_relevel(
    "si", "no"
  )
control$apropia2 <- control$apropia2 %>%
  fct_relevel(
    "si", "no"
  )
control$apropia3 <- control$apropia3 %>%
  fct_relevel(
    "si", "no"
  )

control$contexto4 <- control$contexto4 %>%
  fct_relevel(
    "si", "no")

control$contexto5 <- control$contexto5 %>%
  fct_relevel(
    "si", "no")
control$contexto6 <- control$contexto6 %>%
  fct_relevel(
    "si", "no")
control$contexto7 <- control$contexto7 %>%
  fct_relevel(
    "si", "no")
control$articula8 <- control$articula8 %>%
  fct_relevel(
    "si", "no")
control$articula9 <- control$articula9 %>%
  fct_relevel(
    "si", "no")
control$articula10 <- control$articula10 %>%
  fct_relevel(
    "si", "no")
control$articula11 <- control$articula11 %>%
  fct_relevel(
    "si", "no")
control$articula12 <- control$articula12 %>%
  fct_relevel(
    "si", "no")
control$articula13 <- control$articula13 %>%
  fct_relevel(
    "si", "no")
control$articula14 <- control$articula14 %>%
  fct_relevel(
    "si", "no")
control$flexible15 <- control$flexible15 %>%
  fct_relevel(
    "si", "no")
control$flexible16 <- control$flexible16 %>%
  fct_relevel(
    "si", "no")
control$implementa17 <- control$implementa17 %>%
  fct_relevel(
    "si", "no")
control$implementa18 <- control$implementa18 %>%
  fct_relevel(
    "si", "no")
control$implementa19 <- control$implementa19 %>%
  fct_relevel(
    "si", "no")
control$implementa20 <- control$implementa20 %>%
  fct_relevel(
    "si", "no")






#Gráfico apropia----

gglikert(control, include = apropia1:apropia3)+
  scale_fill_jco ( ) +
  theme_classic()+
  ggtitle("Gráfico 1.Subdimensión apropiación")+
  theme(legend.position = "bottom")


#Gráfico contexto ----
gglikert (control,
          include = contexto4:contexto7)+
  scale_fill_jco()+
  ggtitle("Gráfico 2.
Subdimensión contexto")


#Gráfico articula----
gglikert(control, include = articula8:articula14)+
  scale_fill_jco()+
  ggtitle("Gráfico 3.
subdimensión articulación")

#Gráfico flexible----

gglikert(control, include = flexible15:flexible16)+
  scale_fill_jco()+
  ggtitle("Gráfico 4.
Subdimensión flexibilidad")

#Gráfico implementa----
gglikert(control, include = implementa17:implementa20)+
  scale_fill_jco() +
  ggtitle("Gráfico 5.
Subdimensión implementación")


