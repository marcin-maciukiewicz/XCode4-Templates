//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark -
#pragma mark Singleton
static ___FILEBASENAMEASIDENTIFIER___ *sharedInstance = nil;  
+ (___FILEBASENAMEASIDENTIFIER___ *)sharedInstance {             
    @synchronized(self) {                            
        if (sharedInstance == nil) {             
            /* Note that 'self' may not be the same as ___FILEBASENAMEASIDENTIFIER___ */                               
            /* first assignment done in allocWithZone but we must reassign in case init fails */      
            sharedInstance = [[self alloc] init];                                               
            NSAssert((sharedInstance != nil), @"didn't catch singleton allocation");       
        }                                              
    }                                                
    return sharedInstance;                     
}                                                  
+ (id)allocWithZone:(NSZone *)zone {               
    @synchronized(self) {                            
        if (sharedInstance == nil) {             
            sharedInstance = [super allocWithZone:zone]; 
            return sharedInstance;                 
        }                                              
    }                                                
    
    /* We can't return the shared instance, because it's been init'd */ 
    NSAssert(NO, @"use the singleton API, not alloc+init");        
    return nil;                                      
}                                                  
- (id)retain {                                     
    return self;                                     
}                                                  
- (NSUInteger)retainCount {                        
    return NSUIntegerMax;                            
}                                                  
- (void)release {                                  
}                                                  
- (id)autorelease {                                
    return self;                                     
}                                                  
- (id)copyWithZone:(NSZone *)zone {                
    return self;                                     
} 

#pragma mark -
#pragma mark Implementation

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
