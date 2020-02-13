ALTER TABLE "unittesting$testsuite" RENAME TO "fb0d017c5da643fc98e54eb4b8e89a5a";
ALTER TABLE "unittesting$unittest" RENAME TO "2820b3c8b1374ce687cf09e1c0c64ae2";
ALTER TABLE "unittesting$unittest_testsuite" DROP CONSTRAINT "uniq_unittesting$unittest_testsuite_unittesting$unittestid";
DROP INDEX "idx_unittesting$unittest_testsuite_unittesting$testsuite_unittesting$unittest";
ALTER TABLE "unittesting$unittest_testsuite" RENAME TO "cf70c13f2a54437bb3a73b00c46cd965";
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = 'ad076f23-55ba-43ec-8eb1-822ee114e08b';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = 'ad076f23-55ba-43ec-8eb1-822ee114e08b';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = 'ad076f23-55ba-43ec-8eb1-822ee114e08b');
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = 'ad076f23-55ba-43ec-8eb1-822ee114e08b';
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = '30116e45-fddf-4805-9ef9-4660d6666f1f';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = '30116e45-fddf-4805-9ef9-4660d6666f1f';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = '30116e45-fddf-4805-9ef9-4660d6666f1f');
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = '30116e45-fddf-4805-9ef9-4660d6666f1f';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = 'e3cdfec5-d08d-4dd4-9851-48f6d778079d';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_unittesting$unittest_testsuite_unittesting$unittestid';
DROP TABLE "fb0d017c5da643fc98e54eb4b8e89a5a";
DROP TABLE "2820b3c8b1374ce687cf09e1c0c64ae2";
DROP TABLE "cf70c13f2a54437bb3a73b00c46cd965";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20200213 10:33:11';
