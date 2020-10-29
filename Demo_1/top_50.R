#descargar base de datos de spotify, el 24-10-2020
install.packages("devtools")
install.packages("rlang")
install.packages("digest")
install.packages("glue")
library(devtools)
library(rlang)
library(digest)
library(glue)

devtools::install_github('charlie86/spotifyr')

library(spotifyr)

Sys.setenv(SPOTIFY_CLIENT_ID = 'd7f6fb581e2f4bd1acc1b25d36134367')
Sys.setenv(SPOTIFY_CLIENT_SECRET = '62579fc31dba4df3ac62ccf28ae5776f')
access_token <- get_spotify_access_token()

##informacion de playlist, los 50 mas escuchados en chile descargado 24-10-2020 a las 23:55(aprox)
top50_chile <- get_playlist_audio_features("spotify", "37i9dQZEVXbL0GavIqMTeb")
View(top50_chile)

top50_chile <- top50_chile
