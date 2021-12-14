# Codigo juntar archivos sizse Vigilancia
# Estimacion de la sensibilidad del sistema de vigilancia epidemiologica para PPC
#Alfredo Acosta
# alfredojavier55@gmail.com
# Phd Candidate University of Sao Paulo
# Preventive veterinary medicine department
#https://github.com/alfredojavier55/Preparing_agro_data

# Juntar archivos vigilancia (join-vig) ----
# 9.11.21

setwd("~/Dropbox/0.USP/1 Projeto/Conferir-dados/2021")
library(dplyr);library(lubridate)

# Colnames correctos ----
vge0 <- read.csv("Rep_General_EventosSan0.csv", colClasses = "character",encoding = "UTF-8")
vr0 <- read.csv("Rep_ResultadosGEV0.csv", colClasses = "character",encoding = "UTF-8")
vc0 <- read.csv("Rep_CierreGEV0.csv", colClasses = "character",encoding = "UTF-8")

# Archivos de general ----
vge1 <- readxl::read_excel("VEPG02_REP_GENERAL_BASICO 2014.xls")
# vge1 <- vge1[-1,]
vge2 <- readxl::read_excel("VEPG02_REP_GENERAL_BASICO 2015.xls")
vge2 <- vge2[-1,]
vge3 <- readxl::read_excel("VEPG02_REP_GENERAL_BASICO 2016.xls")
vge3 <- vge3[-1,]
vge4 <- readxl::read_excel("VEPG02_REP_GENERAL_BASICO 2017.xls")
vge4 <- vge4[-1,]
vge5 <- readxl::read_excel("VEPG02_REP_GENERAL_BASICO 2018.xls")
vge5 <- vge5[-1,]
vge6 <- readxl::read_excel("VEPG02_REP_GENERAL_BASICO 2019.xls")
vge6 <- vge6[-1,]
vge7 <- readxl::read_excel("VEPG02_REP_GENERAL_BASICO 2020.xls")
vge7 <- vge7[-1,]
vge8 <- readxl::read_excel("VEPG02_REP_GENERAL_BASICO 2021.xls")
vge8 <- vge8[-1,]

vge <- rbind(vge1, vge2, vge3, vge4, vge5, vge6, vge7, vge8)
vge1 <- readxl::read_excel("VEPG02_REP_GENERAL_BASICO 2015.xls")
colnames(vge) <- vge1[1,]

colnames(vge0)
colnames(vge)

# Reordenar y revisar bien Cristian ----
vge <- vge[,c(1,5:7,9,10,4,8,8,8,11:18,
              20:24,3,3,27)]

#por algo agregaron las columnas y las deberian usar
# Completar... cristian
# vge <- vge[,c(1,5:7,9,10,4,8,8,8,11:18,
#               20:24,3,3,27,  2,19,25,26)]
# 
# colnames(vge)[27] <- "Alerta"

colnames(vge) <- colnames(vge0)

vge <- vge[-1,]

# Archivos de resultados ----
vr1 <- readxl::read_excel("VEPG02_REP_RESULTADOS 2014.xls")
# vr1 <- vr1[-1,]
vr2 <- readxl::read_excel("VEPG02_REP_RESULTADOS 2015.xls")
vr2 <- vr2[-1,]
vr3 <- readxl::read_excel("VEPG02_REP_RESULTADOS 2016.xls")
vr3 <- vr3[-1,]
vr4 <- readxl::read_excel("VEPG02_REP_RESULTADOS 2017.xls")
vr4 <- vr4[-1,]
vr5 <- readxl::read_excel("VEPG02_REP_RESULTADOS 2018.xls")
vr5 <- vr5[-1,]
vr6 <- readxl::read_excel("VEPG02_REP_RESULTADOS 2019.xls")
vr6 <- vr6[-1,]
vr7 <- readxl::read_excel("VEPG02_REP_RESULTADOS 2020.xls")
vr7 <- vr7[-1,]
vr8 <- readxl::read_excel("VEPG02_REP_RESULTADOS 2021.xls")
vr8 <- vr8[-1,]

vr <- rbind(vr1, vr2, vr3, vr4, vr5, vr6, vr7, vr8)

colnames(vr)
colnames(vr0)

vr <- vr[,c(1,5:7,9,10,4,8,8,8,11:18,20,21,3,3,27,28,29,33,32,34:39,41,43,44,42)]

colnames(vr) <- colnames(vr0)

vr <- vr[-1,]

# Archivos de cierre ----
vc1 <- readxl::read_excel("VEPG02_REP_CIERRE 2014.xls")
# vc1 <- vc1[-1,]
vc2 <- readxl::read_excel("VEPG02_REP_CIERRE 2015.xls")
vc2 <- vc2[-1,]
vc3 <- readxl::read_excel("VEPG02_REP_CIERRE 2016.xls")
vc3 <- vc3[-1,]
vc4 <- readxl::read_excel("VEPG02_REP_CIERRE 2017.xls")
vc4 <- vc4[-1,]
vc5 <- readxl::read_excel("VEPG02_REP_CIERRE 2018.xls")
vc5 <- vc5[-1,]
vc6 <- readxl::read_excel("VEPG02_REP_CIERRE 2019.xls")
vc6 <- vc6[-1,]
vc7 <- readxl::read_excel("VEPG02_REP_CIERRE 2020.xls")
vc7 <- vc7[-1,]
vc8 <- readxl::read_excel("VEPG02_REP_CIERRE 2021.xls")
vc8 <- vc8[-1,]

vc <- rbind(vc1, vc2, vc3, vc4, vc5, vc6, vc7, vc8)
vc1 <- readxl::read_excel("VEPG02_REP_CIERRE 2014.xls")
colnames(vc) <- vc1[1,]

colnames(vc0)
colnames(vc)

# Reordenar ----
vc <- vc[,c(1,7:9,11,12,4,10,10,10,13:20,
            22,23,3,3,5,36,26:35)]

colnames(vc) <- colnames(vc0)

# Revisar si son los colnames verdaderos luego borrar primera linea
vc <- vc[-1,]

rm(vge0, vr0, vc0)
rm(vc1,vc2,vc3,vc4,vc5,vc6,vc7,vc8)
rm(vge1,vge2,vge3,vge4,vge5,vge6,vge7,vge8)
rm(vr1,vr2,vr3,vr4,vr5,vr6,vr7,vr8)

vge$canton <- vge$cantón
vge$cantón <- NULL

#Banco Resultados de eventos
vr$cant_muestras <- as.numeric(vr$cant_muestras)
vr$positivos <- as.numeric(vr$positivos)
vr$negativos <- as.numeric(vr$negativos)
vr$reactivos <- as.numeric(vr$reactivos)
vr$indeterminados <- as.numeric(vr$indeterminados)
vr$canton <- vr$cantón
vr$cantón <- NULL

# Banco Cierre de eventos
vc$existentes <- as.numeric(vc$existentes)
vc$enfermos <- as.numeric(vc$enfermos)
vc$muertos <- as.numeric(vc$muertos)
vc$sacrificad <- as.numeric(vc$sacrificad)
vc$canton <- vc$cantón
vc$cantón <- NULL

# -- Vigilancia general porcinos ----
v0 <- left_join(vc, vr)
v1 <- left_join(v0,vge)

table(v1$especie)
table(v1$prueba_solicitada)

# Filtrando porcinos
v2 <- v1 %>%
  filter(especie == "PORCINOS") 

v2 <- v2 %>%
  # filter(detalle_diagnóstico == "Peste porcina clásica")%>%
  # filter(detalle_diagnóstico == "PESTE PORCINA CLÁSICA")%>%
  group_by(orden, provincia, canton, parroquia, cedula, propietario, semana, zona, 
           coord_x, coord_y, predio,t_explotación, notificador, 
           f_1er_enfermo, f_notificación, f_1era_visita, síndrome_presuntivo,
           patología, especie, edad, f_elaboración, f_ingreso, f_cierre_orden,
           responsable, vacuno, focal, dosis_focal, perifocal, dosis_perifocal, 
           especie_f, colecta)%>%
  summarise(existente=sum(existentes, muertos, sacrificad), enfermo=sum(enfermos), mortos=sum(muertos), 
            sacrifi=sum(sacrificad), afetados=sum(muertos,sacrificad), 
            pos=sum(positivos), total_muestras=sum(cant_muestras), 
            indeterm=sum(indeterminados), reactivo=sum(reactivos))


#agregando ano
v2$ano <- year(dmy(v2$f_1er_enfermo))
v2$month <- month(dmy(v2$f_1er_enfermo))

# Borrar bovinos
v2 <- v2[v2$orden != "1",] #0700860679 loja paltas casamba
v2 <- v2[v2$orden != "2382",] 
v2 <- v2[v2$orden != "1096",] 
v2 <- v2[v2$orden != "4114",] 
v2 <- v2[v2$orden != "6270",] 

# Numero total de eventos
length(unique(v2$orden))
#1758 com atualizacao 10/10/2021 todas as patologias
#1863 com atualizacao 10/12/2021 todas as patologias

# -- Vigilancia geral suinos ----
# numero de notificaciones

# Asignando columna de fechas para graficos
v2$f_1er_enfermo <- dmy(v2$f_1er_enfermo)
# Changing to floor date week
v2$week <- floor_date(v2$f_1er_enfermo, "week")
# Best visualizations by month
v2$Month <- floor_date(v2$f_1er_enfermo, "month")


v2 %>%
  group_by(ano)%>%
  summarise(notifi=length(unique(orden)))


# Número de notificaciones generales de porcinos
v2 %>%
  # group_by(month)%>%
  group_by(Month)%>%
  # filter(ano <2020)%>%
  # filter(ano >2016)%>%
  summarise(notifi_geral=length(unique(orden)),
            casos=sum(pos >= 1, na.rm = TRUE))%>%
  ggplot()+
  geom_col(aes(Month,notifi_geral), fill="#377EB8")+
  scale_y_continuous(breaks= pretty_breaks())+
  labs(y="Notificaciones vigilancia general porcinos",
       x="Meses")+
  theme_minimal() +
  theme(text = element_text(size = 14))

# Número de notificaciones por sindrome presuntivo
v2 %>%
  # group_by(month)%>%
  group_by(Month,síndrome_presuntivo)%>%
  # filter(ano <2020)%>%
  # filter(ano >2016)%>%
  summarise(notifi_geral=length(unique(orden)),
            casos=sum(pos >= 1, na.rm = TRUE))%>%
  ggplot()+
  geom_col(aes(Month,notifi_geral,fill=síndrome_presuntivo))+
  scale_y_continuous(breaks= pretty_breaks())+
  labs(y="Notificaciones vigilancia general porcinos",
       x="Meses")+
  theme_minimal() +
  theme(text = element_text(size = 14))


# Número de notificaciones por sindrome presuntivo
v2 %>%
  # group_by(month)%>%
  group_by(Month,notificador)%>%
  filter(ano >2020)%>%
  # filter(ano >2016)%>%
  summarise(notifi_geral=length(unique(orden)),
            casos=sum(pos >= 1, na.rm = TRUE))%>%
  ggplot()+
  geom_col(aes(Month,notifi_geral,fill=notificador))+
  scale_y_continuous(breaks= pretty_breaks())+
  labs(y="Notificaciones vigilancia general porcinos",
       x="Meses")+
  theme_minimal() +
  theme(text = element_text(size = 14))







#7 -- Vigilancia especifica PPC----
#criando o v2 novo com as notificações extra
# Linkage dos reportes
v0 <- left_join(vc, vr)
v1 <- left_join(v0,vge)

table(v1$especie)
table(v1$prueba_solicitada)

# Criando os casos
v2 <- v1 %>%
  filter(especie == "PORCINOS") 

v2 <- v2 %>%
  filter(prueba_solicitada != "PESTE PORCINA CLÁSICA (AC.)")
###
v2 <- v2 %>%
  # filter(detalle_diagnóstico == "Peste porcina clásica")%>%
  filter(detalle_diagnóstico == "PESTE PORCINA CLÁSICA")%>%
  group_by(orden, provincia, canton, parroquia, cedula, propietario, semana, zona, 
           coord_x, coord_y, predio,t_explotación, notificador, 
           f_1er_enfermo, f_notificación, f_1era_visita, síndrome_presuntivo,
           patología, especie, edad, f_elaboración, f_ingreso, f_cierre_orden,
           responsable, vacuno, focal, dosis_focal, perifocal, dosis_perifocal, 
           especie_f, colecta)%>%
  summarise(existente=sum(existentes, muertos, sacrificad), enfermo=sum(enfermos), mortos=sum(muertos), 
            sacrifi=sum(sacrificad), afetados=sum(muertos,sacrificad), 
            pos=sum(positivos), total_muestras=sum(cant_muestras), 
            indeterm=sum(indeterminados), reactivo=sum(reactivos))

#Quando faço este mesto filtro ao tirar o detalhe diagnostico de PPC
#qualquer outra fica como que se fosse ppc e isso nao e certo.
# inclui prueba solicitada, os casos são submetidos a varias provas, estou registrando
# o primeiro que sai desde o joint com os resultados

plot(v2$existente)
hist(log(v2$existente))
table(v2$existente)
summary(v2$existente)

#agregando ano
v2$ano <- year(dmy(v2$f_1er_enfermo))
v2$month <- month(dmy(v2$f_1er_enfermo))

# Borrar bovinos
v2 <- v2[v2$orden != "1",] #0700860679 loja paltas casamba
v2 <- v2[v2$orden != "2382",] 
v2 <- v2[v2$orden != "1096",] 
v2 <- v2[v2$orden != "4114",] 
v2 <- v2[v2$orden != "6270",] 

# Numero total de eventos
length(unique(v2$orden))
#1089 com atualizacao 10/12/2021 todas as patologias

# 5 -- Vigilancia geral suinos ----
# numero de notificaciones
v2 %>%
  group_by(ano)%>%
  summarise(notifi=length(unique(orden)))

# Numero de casos e notificacoes ----
v2 %>%
  group_by(ano)%>%
  # mutate(caso=ifelse(pos>=1,"caso", "control"))%>%
  # filter(ano == "2021")%>%
  summarise(notifi_PPC=length(unique(orden)),
            surtos_PPC=sum(pos >= 1, na.rm = TRUE))

# Cargando librerias de color
library(RColorBrewer)
display.brewer.pal(n=8,name="Set1")
brewer.pal(n=8,name="Set1")
show_col(viridis_pal()(4))


# Asignando columna de fechas para graficos
v2$f_1er_enfermo <- dmy(v2$f_1er_enfermo)
# Changing to floor date week
v2$week <- floor_date(v2$f_1er_enfermo, "week")
# Best visualizations by month
v2$Month <- floor_date(v2$f_1er_enfermo, "month")

# Graficos
v2 %>%
  # group_by(month)%>%
  group_by(Month)%>%
  # filter(ano <2020)%>%
  # filter(ano >2016)%>%
  summarise(notifi_geral=length(unique(orden)),
            casos=sum(pos >= 1, na.rm = TRUE))%>%
  ggplot()+
  geom_col(aes(Month,notifi_geral), fill="#377EB8")+
  scale_y_continuous(breaks= pretty_breaks())+
  labs(y="Notificaciones vigilancia especifica PPC",
       x="Meses")+
  theme_minimal() +
  theme(text = element_text(size = 14))

# notificaciones por semana epidemiologica
v2 %>%
  # group_by(month)%>%
  group_by(week)%>%
  # filter(ano <2020)%>%
  # filter(ano >2016)%>%
  summarise(notifi_geral=length(unique(orden)),
            diagnosticados=sum(pos >= 1, na.rm = TRUE))%>%
  ggplot()+
  geom_col(aes(week,notifi_geral), fill="#377EB8")+
  scale_y_continuous(breaks= pretty_breaks())+
  labs(y="Notificaciones PPC por semana ",
       x="Meses")+
  theme_minimal() +
  theme(text = element_text(size = 14))


# Casos por meses
v2 %>%
  group_by(Month)%>%
  # group_by(week)%>%
  # filter(ano <2020)%>%
  # filter(ano >2016)%>%
  summarise(notifi_geral=length(unique(orden)),
            casos=sum(pos >= 1, na.rm = TRUE))%>%
  ggplot()+
  geom_col(aes(Month,casos), fill="#377EB8")+
  scale_y_continuous(breaks= pretty_breaks())+
  labs(y="Casos PPC",
       x="Meses")+
  theme_minimal() +
  theme(text = element_text(size = 14))


# Casos por meses (filtrado un ano)
v2 %>%
  group_by(Month)%>%
  # group_by(week)%>%
  filter(ano >2019)%>%
  # filter(ano >2016)%>%
  summarise(notifi_geral=length(unique(orden)),
            casos=sum(pos >= 1, na.rm = TRUE))%>%
  ggplot()+
  geom_col(aes(Month,casos), fill="#377EB8")+
  scale_y_continuous(breaks= pretty_breaks())+
  labs(y="Casos PPC",
       x="Meses")+
  theme_minimal() +
  theme(text = element_text(size = 14))




