register /me/pigtrunk/contrib/piggybank/java/piggybank.jar
--register /me/pigtrunk/build/ivy/lib/Pig/commoncrawl-examples-1.0.0.jar
define ArcFileLoader org.apache.pig.piggybank.storage.ArcFileLoader();

arcs = LOAD '/me/commoncrawl-pig-arcfileloader-udf-storefunc/data' using ArcFileLoader();
a = limit arcs 100;
dump a
