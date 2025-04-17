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
control <- control %>%
  mutate(across(
    c(apropia1:apropia3, contexto4:contexto7,
      articula8:articula14, flexible15:flexible16,
      implementa17:implementa20),
    ~ fct_relevel(., "si", "no")))

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
  theme_classic()+
  ggtitle("Gráfico 2.
Subdimensión contexto")+
  theme(legend.position = "bottom")

#Gráfico articula----
gglikert(control, include = articula8:articula14)+
  scale_fill_jco()+
  theme_classic()+
  ggtitle("Gráfico 3.
subdimensión articulación")+
  theme(legend.position = "bottom")

#Gráfico flexible----

gglikert(control, include = flexible15:flexible16)+
  scale_fill_jco()+
  theme_classic()+
  ggtitle("Gráfico 4.
Subdimensión flexibilidad")+
  theme(legend.position = "bottom")

#Gráfico implementa----
gglikert(control, include = implementa17:implementa20)+
  scale_fill_jco() +
  theme_classic()+
  ggtitle("Gráfico 5.
Subdimensión implementación")+
  theme(legend.position = "bottom")
