BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	parent_id VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0012D00000Mw0rrQAB','Salesforce','');
CREATE TABLE "Delivery_Item__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	delivery__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Item__c" VALUES('a002D000001W4pUQAS','Razor Blades','2020-05-20','Frozen','a012D000001p0oHQAQ');
INSERT INTO "Delivery_Item__c" VALUES('a002D000001W4pZQAS','Pecan Salad','2020-05-21','Non-refrigerated','a012D000001p0oHQAQ');
INSERT INTO "Delivery_Item__c" VALUES('a002D000001W4peQAC','Something','2020-05-14','Frozen','a012D000001p0oHQAQ');
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	account__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a012D000001p0oHQAQ','New Deliveries','2020-05-18T19:00:00.000Z','Completed','0012D00000Mw0rrQAB');
COMMIT;
