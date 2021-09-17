#compile
cd wikiextractor-master
python3 setup.py build
python3 setup.py install
cd ..
#run
wikiextractor enwiki-latest-pages-meta-current.xml --links -ns ns0 --no-templates -o articles_text --debug



#approx run time 9 hours on meta dump
#known issues : can not eliminate redirects   -Resolved 







#NOTE :
#replace "enwiki-.." with uncompressed dump file
#--links saves information about source,dest,surfaceName used. (Added by Kapil)
#-ns : stick to ns0 is only internal links and main articles to be considered
#-o in articles_text folder each directory serially will have 100 files. Each file will have multiple articles
#-- debug shows current live status and time (added by Kapil)
#automatically create a csv file with article details and its directory (added by Kapil)
#All other modifications in codes have been marked with proper comments as "edited by Kapil"
#Avoid editing the main copy, try executing on a sample copy considering the complexity of design
#github source : https://github.com/attardi/wikiextractor
#Files modified in current version : 
#/wikiextractor/extract.py
#/wikiextractor/WikiExtractor.py

