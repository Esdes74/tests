#!/bin/sh

path="../tests/cube3D"
path_correcte="$path/map_correcte"
path_incorrecte="$path/map_incorrecte"

echo "Norminette :"
norminette *.c *.h libft/lib_data/* libft/lib_fct/* libft/libft.h

echo "Compilation :"
make

echo "====================== Tests Correctes ======================"
$1 ./cube3D $path_correcte/test_color.cub
echo "###############################################"
$1 ./cube3D $path_correcte/test_color2.cub
echo "###############################################"
$1 ./cube3D $path_correcte/test_color3.cub
echo "###############################################"
$1 ./cube3D $path_correcte/test_color4.cub
echo "###############################################"
$1 ./cube3D $path_correcte/grande_map.cub
echo "###############################################"
$1 ./cube3D $path_correcte/grande_map2.cub

echo
echo "Tests dimensions map"
echo
$1 ./cube3D $path_correcte/map_démesurée.cub
echo "###############################################"
$1 ./cube3D $path_correcte/map_démesurée2.cub
echo "###############################################"
$1 ./cube3D $path_correcte/toute_petite.cub

echo
echo "=============== Tests format incorrectes ===================="
echo
echo "Tests nombre fichier incorrecte"
echo
$1 ./cube3D $path_correcte/grande_map.cub $path_correcte/grande_map.cub
echo "###############################################"
$1 ./cube3D
echo
echo "Tests nom fichier incorrecte"
echo
$1 ./cube3D not_existing
echo "###############################################"
$1 ./cube3D not_existing.cub
echo "###############################################"
$1 ./cube3D $path_correcte/nom_incorecte.cub
echo "###############################################"
$1 ./cube3D $path_correcte/nom_incorecte.cu
echo "###############################################"
$1 ./cube3D $path_correcte/nom_incorecte.cubf
echo "###############################################"
$1 ./cube3D $path_correcte/nom_incorecte.pdf
echo "###############################################"
$1 ./cube3D $path_incorrecte/wrong_format.pdf

echo
echo "================= Tests map incorrectes ====================="
echo
echo "Tests regles de generations de map non respectees"
echo
$1 ./cube3D $path_incorrecte/double_perso.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/double_perso2.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/double_perso3.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/map_démesurée_sans_perso.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/without_perso.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/no_map.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/empty.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/wrong_component.cub

echo
echo "Tests maps non fermées"
echo
$1 ./cube3D $path_incorrecte/opened_map.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/opened_map2.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/opened_map3.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/opened_map4.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/opened_map5.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/opened_map6.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/opened_map7.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/opened_map8.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/opened_map9.cub

echo
echo "Tests sur les textures ou les couleurs"
echo
$1 ./cube3D $path_incorrecte/same_texture.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/same_texture2.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/test_color.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/test_color2.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/test_color3.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/one_color.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/one_texture.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/double_north_texture.cub
echo "###############################################"
$1 ./cube3D $path_incorrecte/double_weast_texture.cub