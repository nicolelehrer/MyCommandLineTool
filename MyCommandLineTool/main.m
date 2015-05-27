//
//  main.m
//  MyCommandLineTool
//
//  Created by Nicole Lehrer on 5/27/15.
//  Copyright (c) 2015 Nicole Lehrer. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSLog(@"Which site do you want to pull data from?");
        
        char str[50] = {0};
        scanf("%s", str);
        
        NSString * address = [NSString stringWithFormat:@"%s", str];
        NSURL * url = [NSURL URLWithString:address];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        
        NSData *returnData = [NSURLConnection sendSynchronousRequest: request returningResponse: nil error: nil];

        NSLog(@" data from site is %@", [[NSString alloc] initWithData:returnData encoding:NSUTF8StringEncoding]);
        
    }
    return 0;
}

