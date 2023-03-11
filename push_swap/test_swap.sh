#!/bin/sh

path="../../tests/push_swap"

echo "Norminette :"
norminette *.c *.h libft/lib_data/* libft/lib_fct/* libft/libft.h

echo "Compilation :"
make $1

echo
echo "======================= Tests arguments corrects ======================="
echo
$2 ./push_swap 346 6489 64893 321456 654684 35456 3546468 45847 3546 5646874 6476468

echo
echo "###############################################"
$2 ./push_swap 346 -6489 64893 321456 -654684 35456 3546468 -45847 3546 5646874 6476468

echo
echo "###############################################"
$2 ./push_swap 346 -6489 64893 321456 -654684

echo
echo "###############################################"
$2 ./push_swap 346 35456 3546468 -45847 3546 5646874 6476468

echo
echo "###############################################"
$2 ./push_swap 346 -54684 35456 3546468 -45847 3546 5646874 6476468

echo
echo "###############################################"
$2 ./push_swap 346 -6489 64893 321456 5646874 6476468

echo
echo
echo "Tests ne doit RIEN imprimer"
echo
echo "###############################################"
$2 ./push_swap 346

echo
echo "###############################################"
$2 ./push_swap 346 352

echo
echo "###############################################"
$2 ./push_swap

echo
echo "###############################################"
$2 ./push_swap ""

echo
echo
echo "Tests checker et taille 100 arguments"
echo

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 100 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
MOY=$(($MOY + $RES))
echo $RES

echo
echo "moyenne des tests pour une liste de 100 nombres:"
MOY=$(($MOY / 20))
echo $MOY
echo
echo "Tests checker et taille 500 arguments"
echo
ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$RES
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

ARG=$(python3 $path/gene_alea.py 500 -200000 200000); ./push_swap $ARG | ./$path/checker_linux $ARG
RES=$(./push_swap $ARG | wc -l)
echo $RES
MOY=$(($MOY + $RES))
echo "###############################################"

echo
echo "moyenne des tests pour une liste de 500 nombres:"
MOY=$(($MOY / 20))
echo $MOY
echo
echo
echo "====================== Tests arguments incorrects ======================"
echo
$2 ./push_swap qgbsg
echo "###############################################"

$2 ./push_swap egse sgzerg aeqgreg
echo "###############################################"

$2 ./push_swap --654684
echo "###############################################"

$2 ./push_swap -54-564
echo "###############################################"

$2 ./push_swap ++54684
echo "###############################################"

$2 ./push_swap 54g684
echo "###############################################"

$2 ./push_swap f54684
echo "###############################################"

$2 ./push_swap 54684t
echo "###############################################"

$2 ./push_swap 54684 234568 567845 254d
echo "###############################################"

$2 ./push_swap 54684 5648 3s45 7884
echo "###############################################"

$2 ./push_swap 5 5
echo "###############################################"

$2 ./push_swap 5 6 8 9 4 2 5
echo "###############################################"

$2 ./push_swap 2 4 9 6 8 7 6
echo "###############################################"

$2 ./push_swap 8 4 9 3 8 5 4
echo "###############################################"

$2 ./push_swap 51648 51648
echo "###############################################"

$2 ./push_swap 51648 546 36455648 1468 354 51648
echo "###############################################"

$2 ./push_swap 51648 546 36455648 36455648 1468 354 51648
echo "###############################################"

$2 ./push_swap 51648 546 36455648 1468 354 51648 36455648
echo "###############################################"

$2 ./push_swap 36455648 51648 546 36455648 1468 354 51648
echo "###############################################"

$2 ./push_swap 51648 546 36455648 1468 354 51648
echo "###############################################"

$2 ./push_swap 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 45 46 47 48 49 50 0

echo
echo "Tests dépassement des max et min"
echo
$2 ./push_swap -2147483649
echo "###############################################"

$2 ./push_swap -2157473648
echo "###############################################"

$2 ./push_swap 2147483648
echo "###############################################"

$2 ./push_swap 2147583547
echo "###############################################"

$2 ./push_swap 21475835434568434646984135436546468464684346456845647
echo "###############################################"

$2 ./push_swap 214723165461646513641345476841313654646464345641314646874678468436546146987987943130295136113606056165468436464130561464761465746547984691469198131894123036489191232167346514354649876516523212310306456876156841312658945835434568434646984135436546468464684346456845647
