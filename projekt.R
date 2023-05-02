#zainstalowanie odpowiednich bibliotek
library(rgdal)
library(sf)
library(terra)
library(ggplot2)
#wczytanie plików SHP
granica = "C:/Users/admin/Desktop/I_rok_II_st/_r/granica_v.shp"
granica_layer = st_read(dsn=granica, layer = "granica_v")

pieszy_rowerowy = "C:/Users/admin/Desktop/I_rok_II_st/_r/ruch_pieszy_rowerowy.shp"
pieszy_rowerowy_layer = st_read(dsn=pieszy_rowerowy, layer = "ruch_pieszy_rowerowy")

jezdnia = "C:/Users/admin/Desktop/I_rok_II_st/_r/jezdnia.shp"
jezdnia_layer = st_read(dsn=jezdnia, layer = "jezdnia")

droga = "C:/Users/admin/Desktop/I_rok_II_st/_r/droga.shp"
droga_layer = st_read(dsn=droga, layer = "droga")

zabudowa = "C:/Users/admin/Desktop/I_rok_II_st/_r/zabudowa.shp"
zabudowa_layer = st_read(dsn=zabudowa, layer='zabudowa')

woda_powierzchniowa = "C:/Users/admin/Desktop/I_rok_II_st/_r/woda_powierzchniowa.shp"
woda_powierzchniowa_layer = st_read(dsn=woda_powierzchniowa, layer="woda_powierzchniowa")

miejscowosc = "C:/Users/admin/Desktop/I_rok_II_st/_r/miejscowosc.shp"
miejscowosc_layer = st_read(dsn = miejscowosc, layer='miejscowosc')

rzeka="C:/Users/admin/Desktop/I_rok_II_st/_r/rzeka.shp"
rzeka_layer = st_read(dsn=rzeka, layer='rzeka')

budynek = "C:/Users/admin/Desktop/I_rok_II_st/_r/budynek.shp"
budynek_layer = st_read(dsn=budynek, layer='budynek')

natura = "C:/Users/admin/Desktop/I_rok_II_st/_r/natura_2000.shp"
natura_layer = st_read(dsn=natura, layer = 'natura_2000')

rezerwat = "C:/Users/admin/Desktop/I_rok_II_st/_r/rezerwat.shp"
rezerwat_layer = st_read(dsn = rezerwat, layer = 'rezerwat')

park_k = "C:/Users/admin/Desktop/I_rok_II_st/_r/krajobazowy_p.shp"
park_layer = st_read(dsn = park_k, layer='krajobazowy_p')
#przygotowanie warstwy - kolor itd.

#granica
granica_geom = st_boundary(granica_layer)
granica_agregacja = st_union(granica_geom)

#ciąg ruchu pieszego i rowerowego
drogi_rower_pieszy = ggplot() + 
  geom_sf(data = pieszy_rowerowy_layer, linetype='solid')

#jezdnia
jezdnia_wiz = ggplot()+
  geom_sf(data = jezdnia_layer, linetype='solid')

#droga
droga_wiz = ggplot() + 
  geom_sf(data = jezdnia_layer, linetype='solid')

#zabudowa
zabudowa_wiz = ggplot() +
  geom_sf(data=zabudowa_layer)

#woda powierzchniowa
woda_powierzchniowa_wiz = ggplot()+
  geom_sf(data = woda_powierzchniowa_layer)

#miejscowosc
miejscowosc_wiz = ggplot()+
  geom_sf(data = miejscowosc_layer)

#rzeka
rzeka_wiz = ggplot()+
  geom_sf(data = rzeka_layer)

#budynek
budynek_wiz = ggplot() +
  geom_sf(data = budynek_layer)

#obszar Natura 2000
natura_wiz = ggplot()+
  geom_sf(data=natura_layer)

#rezerwat
rezerwat_wiz = ggplot()+
  geom_sf(data = rezerwat_layer)

#park krajobrazowy
park_wiz = ggplot()+
  geom_sf(data = park_layer)
