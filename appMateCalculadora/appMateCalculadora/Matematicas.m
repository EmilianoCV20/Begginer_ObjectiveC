//
//  Matematicas.m
//  appMateCalculadora
//
//  Created by Emiliano Cepeda on 13/09/24.
//


#import "Matematicas.h"

@implementation Matematicas
//MULTIPLICACION
- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}
//Sumar
- (NSNumber *)sumar:(NSNumber *)a con:(NSNumber *)b {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 + number2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}
//Restar
- (NSNumber *)restar:(NSNumber *)a con:(NSNumber *)b {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 - number2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}
//Dividir
- (NSNumber *)dividir:(NSNumber *)a con:(NSNumber *)b {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 / number2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}
//Potencia
- (NSNumber *)potenciar:(NSNumber *)a con:(NSNumber *)b {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = pow(number1, number2);
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}
//Raiz
- (NSNumber *)raiz:(NSNumber *)a {
    float number1 = [a floatValue];
    float product = sqrt(number1);;
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}

//FACTORIAL
- (NSNumber *)factorial:(NSNumber *)a {
    float number1 = [a floatValue];
    float product = number1;
    for (double i = number1-1; i > 0; i--) {
        product = product * i;
    }
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}

- (NSNumber *)factorialR:(NSNumber *)a {
    float number = [a floatValue];
    if (number <= 1) {
        return @1;
    } else {
        NSNumber *FactAnt = [self factorialR:[NSNumber numberWithFloat:number - 1]];
        NSNumber *result = [NSNumber numberWithFloat:number * [FactAnt floatValue]];
        return result;
    }
}

//ANGULO
- (double)seno:(double) angulo
{
    //(angulo * M_PI) /180
    return sin([self radianesAgrados:angulo]);
}

- (double) radianesAgrados:(double)radianes
{
    return (radianes * M_PI)/180.0;
}

//PRIMO
- (BOOL)primo:(int)num {
    if (num <= 1) {
        NSLog(@"El numero NO es primo");
        return NO;
    }
    for (int i = 2; i <= sqrt(num); i++) {
        if (num % i == 0) {
            NSLog(@"El numero NO es primo");
            return NO;
        }
    }
    NSLog(@"El numero SI es primo");
    return YES;
}

@end
