export LC_ALL="C"
#cat ../data/small/fma2nci/fma.out.train |\
#	         awk '{print $3"\n"$4}' | sort | uniq >\
#		   ../data/small/fma2nci/fma.out.vocab
#
#cat ../data/small/fma2nci/nci.out.train |\
#	         awk '{print $3"\n"$4}' | sort | uniq >\
#		   ../data/small/fma2nci/nci.out.vocab
#
#cat ../data/small/snomed2nci/nci.out.train |\
#	         awk '{print $3"\n"$4}' | sort | uniq >\
#		   ../data/small/snomed2nci/nci.out.vocab
#
#cat ../data/small/snomed2nci/snomed.out.train |\
#	         awk '{print $3"\n"$4}' | sort | uniq >\
#		   ../data/small/snomed2nci/snomed.out.vocab
#
#cat ../data/small/fma2snomed/snomed.out.train |\
#	         awk '{print $3"\n"$4}' | sort | uniq >\
#		   ../data/small/fma2snomed/snomed.out.vocab
#
#cat ../data/small/fma2snomed/fma.out.train |\
#	         awk '{print $3"\n"$4}' | sort | uniq >\
#		 ../data/small/fma2snomed/fma.out.vocab


cat ../data/small/fma2nci/fma.out ../data/small/fma2nci/nci.out |\
       	awk '{print $1"\n"$2}' | sort | uniq >\
	../data/small/fma2nci/fma2nci.vocab

cat ../data/small/snomed2nci/nci.out \
	../data/small/snomed2nci/snomed.out |\
      	awk '{print $1"\n"$2}' | sort | uniq >\
	../data/small/snomed2nci/snomed2nci.vocab

cat ../data/small/fma2snomed/snomed.out \
	../data/small/fma2snomed/fma.out |\
       	awk '{print $1"\n"$2}' | sort | uniq >\
	../data/small/fma2snomed/fma2snomed.vocab

echo "Done generating vocabs"
