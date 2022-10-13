#!/bin/bash
 
 
function somme()
{
     
    som_globale=$(($1+$2))
    echo "le resultat est= $som_globale"
     
    return 1;
}
 
function sous()
{
     
    sous_globale=$(($1-$2))
    echo "le resultat est= $sous_globale"
     
    return 1;
}
function mult()
{
     
    mult_globale=$(($1*$2))
    echo "le resultat est= $mult_globale"
     
    return 1;
}
function div()
{
     
     
    div_globale=$(($1/$2))
    echo "le resultat est= $div_globale"
     
    return 1;
}
 
for ((i=1;i<=$#;i++)) do
{
     
     
    if   test ${!i} = "+"
    then
            somme $1 $3
    elif  test ${!i} = "-"
    then
            sous $1 $3
    elif  test ${!i} = "x"
    then
            mult $1 $3
 
    elif test ${!i} = "/"
    then
            div $1 $3
     
    fi
}
done
