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
        
        NSLog(@"What is your name?");
        char str[50] = {0};
        scanf("%s", str);
        NSLog(@"Hello, %s!", str);
    }
    return 0;
}
