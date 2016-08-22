//
//  PriceDao.m
//  PortfolioManager
//
//  Created by Patrick on 13/11/15.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import "PriceDao.h"
#import "Price.h"
#import "FoundationDataObjects.h"
#define DBPath @"/Users/pzagiel/Dropbox/Finance Toolkit/Hello/PortfolioManager/FinancialWorld.db"


@implementation PriceDao

-(NSString *) getDb {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	NSString *dbFile = [defaults stringForKey:@"db"];
	//NSLog(@"db:%@",dbFile);
	return dbFile;
}




-(NSString *) getDBOld {
		
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	
	NSMutableDictionary *dict= [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.apple.Dock"];
	
	NSString *keyValue;
	keyValue=[dict objectForKey:@"mineffect"];
	NSLog("DB=");
	return nil;
}


// Need to set our Date Formater in varaible _dateFormatter;
-(NSArray *) getPricesForInstrument:(NSString*) isin sorting:(NSString*) order  {

	NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
	[f setDecimalSeparator:@"."];
	//[f setNumberStyle:NSNumberFormatterDecimalStyle];
	
	NSMutableArray *prices = [[NSMutableArray alloc] init];
	id <FDOConnection> _connection;
	_connection = FDOCreateSQLiteConnection([self getDb]);
	id <FDOCommand> command = [_connection newCommand];
	NSMutableString *sql=[ NSMutableString stringWithString:@"SELECT i.code as instrCode,i.name as instrName ,strftime('%m-%d-%Y', p.value_d/1000, 'unixepoch','localtime') as date,\
	p.value, p.evol as evol,p.timestamp,pr.name as provider FROM INSTRUMENT i,INSTR_PRICE p, PROVIDER pr \
	where i.id=p.instr_id AND p.provider_id=pr.id AND i.code=? order by value_d "];
	[sql appendString:order];
	NSLog(order);
	[command prepare:sql];
	NSLog(sql);
	[command bindString:isin toParameterNumber:1];
    id <FDORecordSet> recordSet=[command executeQuery];
	int totalRowCount = 0;
	for(; ![recordSet isEOF]; [recordSet moveNext], totalRowCount++) {
		Price *price=[[Price alloc] init];
		price.instrCode=[recordSet stringValueForColumnNamed:@"instrCode"];
		price.instrName=[recordSet stringValueForColumnNamed:@"instrName"];
		price.date=[recordSet dateValueForColumnNamed:@"date"];
		price.value=[f numberFromString:[recordSet stringValueForColumnNamed:@"value"]];					
		price.evol=[f numberFromString:[recordSet stringValueForColumnNamed:@"evol"]];		
		price.provider=[recordSet stringValueForColumnNamed:@"provider"];
		price.timestamp=[recordSet stringValueForColumnNamed:@"timestamp"];
	    [prices addObject:price];
		[price release];
	}
	[command close];
	[recordSet release];	
	[_connection release];
	
	return [prices autorelease];
}

@end
