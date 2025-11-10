//
//  main.m
//  appBoxOC
//
//  Created by Emiliano Cepeda on 04/09/24.
//

#import <Foundation/Foundation.h>
#include <iostream>
using namespace std;

//#include "Box.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        //Box *box1 = [[Box alloc]init];    // Create box1 object of type Box
        //Box *box2 = [[Box alloc]init];    // Create box2 object of type Box

        //ouble volume = 0.0;             // Store the volume of a box here
      
        // box 1 specification
        //box1.height = 5.0;

        // box 2 specification
        //box2.height = 10.0;
        
        int n1,n2,n3,n4;
        //Solicitar los datos al usuario
        //printf("N1: ");
        //scanf("%i", &n1);
        //printf("N2: ");
        //scanf("%i", &n2);
        //printf("N3: ");
        //scanf("%i", &n3);
        //printf("N4: ");
        //scanf("%i", &n4);
        
        cout<<"N1: ";
        cin>>n1;
        cout<<"N2: ";
        cin>>n2;
        cout<<"N3: ";
        cin>>n3;
        cout<<"N4: ";
        cin>>n4;
        
        Box *box1 = [[Box alloc]initWithInt:n1 y:n2];
        Box *box2 = [[Box alloc]initWithInt:n3 y:n4];
        double volume = 0.0;
       
        box1.height = 5.0;
        box2.height = 10.0;
        
        // volume of box 1
        volume = [box1 volume];
        NSLog(@"Volume of Box1 : %f", volume);
        
        // volume of box 2
        volume = [box2 volume];
        NSLog(@"Volume of Box2 : %f", volume);
    }
    return 0;
}

//class
/*@interface Box:NSObject {
   double length;    // Length of a box
   double breadth;   // Breadth of a box
   double height;    // Height of a box
}
 
@property(nonatomic, readwrite) double height;  // Property
-(double) volume;
@end
*/
/*
@implementation Box

@synthesize height;

-(id)init {
   self = [super init];
   length = 1.0;
   breadth = 1.0;
   return self;
}

-(id) initWithInt: (int)n1 y:(int)n2{
    self = [super init];
    length = n1;
    breadth = n2;
    return self;
}

-(double) volume {
   return length*breadth*height;
}

@end
 */
