if [ -z "$1" ]
then
 echo "makeSolutionPatterns.sh [directory-name] [filename]"
fi

pattern_dir=$1
pattern_file=$2
wt_loc=walkthroughs/$pattern_dir
mkdir $wt_loc
./bin/asciidoc-coalescer.rb  -a allow-uri-read $1/$2 > $wt_loc/walkthrough.adoc
