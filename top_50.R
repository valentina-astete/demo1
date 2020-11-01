#descargar base de datos de spotify, el 24-10-2020


#cargar librerias
library(devtools)
library(rlang)
library(digest)
library(glue)
library(spotifyr)
library(tidyverse)


#acceder a spotify
Sys.setenv(SPOTIFY_CLIENT_ID = 'd7f6fb581e2f4bd1acc1b25d36134367')
Sys.setenv(SPOTIFY_CLIENT_SECRET = '62579fc31dba4df3ac62ccf28ae5776f')
access_token <- get_spotify_access_token()

##informacion de playlist, los 50 mas escuchados en chile descargado 24-10-2020 a las 23:55(aprox)
top50_chile <- get_playlist_audio_features("spotify", "37i9dQZEVXbL0GavIqMTeb")

#seleccion de variables a utilizar

top50_chile <- top50_chile %>% select(danceability, energy, "nombreCancion" = track.album.name)

#guardar base de datos
save(top50_chile, file = "./top50.RData")
