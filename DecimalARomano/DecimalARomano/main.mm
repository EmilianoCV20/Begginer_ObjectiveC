//
//  main.m
//  DecimalARomano
//
//  Created by Emiliano Cepeda on 26/09/24.
//

#import <Foundation/Foundation.h>
#import <iostream>
using namespace std;
#import "Conversor.h"

double n1=0;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog (@"Numero Decimal: ");
        scanf("%lg", &n1);
        
        Conversor *con = [[Conversor alloc]init];
        NSString *numeroRomano = [ con conversorRomano:n1];
        NSLog(@"El número en números romanos es: %@", numeroRomano);
    }
    return 0;
}
