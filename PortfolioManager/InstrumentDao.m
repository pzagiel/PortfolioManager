//
//  InstrumentDao.m
//  PortfolioManager
//
//  Created by Patrick on 28/11/15.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import "InstrumentDao.h"
#import "Instrument.h"
#import "FoundationDataObjects.h"
#define DBPath @"/Users/pzagiel/Dropbox/Finance Toolkit/Hello/PortfolioManager/FinancialWorld.db"

@implementation InstrumentDao


-(NSString *) getDb {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	NSString *dbFile = [defaults stringForKey:@"db"];
	NSLog(@"db:%@",dbFile);
	return dbFile;
}



-(NSArray *) getAllInstrument {
	NSMutableArray *instruments = [[NSMutableArray alloc] init];
	id <FDOConnection> _connection;
	_connection = FDOCreateSQLiteConnection([self getDb]);
	id <FDORecordSet> recordSet = [_connection execute:@"SELECT code,name FROM INSTRUMENT order by name"];
	int totalRowCount = 0;
	for(; ![recordSet isEOF]; [recordSet moveNext], totalRowCount++) {
		Instrument *instrument=[[Instrument alloc] init];
		instrument.code=[recordSet stringValueForColumnNamed:@"code"];
		instrument.name=[recordSet stringValueForColumnNamed:@"name"];		
		//NSLog(instrument.name);
		[instruments addObject:instrument];
	}
	[recordSet release];
	return instruments;
}

@end
