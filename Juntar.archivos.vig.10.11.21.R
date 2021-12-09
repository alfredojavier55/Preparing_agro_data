# Juntar archivos vigilancia (join-vig)
# 9.11.21

setwd("~/Dropbox/0.USP/1 Projeto/Conferir-dados/2021")

# Colnames correctos
vge0 <- read.csv("Rep_General_EventosSan0.csv", colClasses = "character",encoding = "UTF-8")
vr0 <- read.csv("Rep_ResultadosGEV0.csv", colClasses = "character",encoding = "UTF-8")
vc0 <- read.csv("Rep_CierreGEV0.csv", colClasses = "character",encoding = "UTF-8")

# Archivos de general (2014 missing, uso 2015 por ahora)
vge1 <- readxl::read_excel("VEPG02_REP_GENERAL_BASICO 2015.xls")
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

# Archivos de resultados
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

# Archivos de cierre
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

# Revisar cristian ----
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

#3 Linkage dos reportes ----
v0 <- full_join(vc, vr)
v1 <- full_join(v0,vge)

# Modificando formato de fecha
v1$f_1er_enfermo <- dmy(v1$f_1er_enfermo) # "01/08/2015"
v1$detalle_diagnóstico <- tolower(iconv(v1$detalle_diagnóstico, to='ASCII//TRANSLIT'))
v1$prueba_solicitada <- tolower(iconv(v1$prueba_solicitada, to='ASCII//TRANSLIT'))

