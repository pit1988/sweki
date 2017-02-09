#!/bin/bash

if [[ $# != 1 ]]; then
	echo "Uso: texents <file>"
	exit
fi

cat $1 > _sweki_tmp_0
sed 's/&quot;/"/g' _sweki_tmp_0 > _sweki_tmp_1
sed 's/&amp;/\\&{}/g' _sweki_tmp_1 > _sweki_tmp_0
sed 's/&lt;/</g' _sweki_tmp_0 > _sweki_tmp_1
sed 's/&gt;/>/g' _sweki_tmp_1 > _sweki_tmp_0
sed "s/&apos;/\'/g" _sweki_tmp_0 > _sweki_tmp_1
sed 's/&mdash;/---/g' _sweki_tmp_1 > _sweki_tmp_0
sed 's/&sdot;/\\cdot{}/g' _sweki_tmp_1 > _sweki_tmp_0

cat _sweki_tmp_0
rm _sweki_tmp_0
rm _sweki_tmp_1
