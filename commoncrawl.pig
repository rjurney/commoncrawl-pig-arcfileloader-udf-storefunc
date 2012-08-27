register /me/pigtrunk/contrib/piggybank/java/piggybank.jar

arcs = LOAD '/me/commoncrawl-pig-arcfileloader-udf-storefunc/data' using org.apache.pig.piggybank.storage.ArcFileLoader();
a = limit arcs 10;
dump a
