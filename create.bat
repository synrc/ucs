#!/bin/sh

if [ `ls priv/db | wc -l` != "9" ]; then

erl -noshell -pa ebin -s ucs rebuild_database unidata -s init stop
erl -noshell -pa ebin -s ucs rebuild_database mnemonics -s init stop
erl -noshell -pa ebin -s ucs rebuild_database mnemonics -s init stop
erl -noshell -pa ebin -s ucs rebuild_database mibenum -s init stop
erl -noshell -pa ebin -s ucs rebuild_database mappings testdata -s init stop

fi
