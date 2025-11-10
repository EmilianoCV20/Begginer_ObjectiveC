//
//  main.m
//  appMateCalculadora
//
//  Created by Emiliano Cepeda on 13/09/24.
//

#import <Foundation/Foundation.h>
#import <iostream>
using namespace std;
#import "Matematicas.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Matematicas *mat = [[Matematicas alloc]init];
        double n1=0, n2=0;
        
        char str[20] = {0};
        printf("SELECCIONE EL MODO QUE QUIERES HACER CON LOS PUNTOS :\n➕SUMAR\n➖RESTAR\n✖️MULTIPLICAR\n➗DIVIDIR\n🔼POTENCIAR\n🫚RAIZ\n🏭FACTORIAL\n📐SENO\n🥇PRIMO\n\n");
        scanf("%s", str);
        
        if (strcasecmp(str, "SUMAR") == 0) {
            printf("Has seleccionado SUMAR.\n");
            
            NSLog (@"Numero 1: ");
            scanf("%lg", &n1);
            NSLog (@"Numero 2: ");
            scanf("%lg", &n2);
            
            NSNumber *a = [NSNumber numberWithFloat:n1];
            NSNumber *b = [NSNumber numberWithFloat:n2];
            NSNumber *result = [mat sumar:a con:b];
            NSString *resultString = [result stringValue];
            NSLog(@"El resultado es: %@",resultString);
            
            
        } else if (strcasecmp(str, "RESTAR") == 0) {
            printf("Has seleccionado RESTAR.\n");
            
            NSLog (@"Numero 1: ");
            scanf("%lg", &n1);
            NSLog (@"Numero 2: ");
            scanf("%lg", &n2);
            
            NSNumber *a = [NSNumber numberWithFloat:n1];
            NSNumber *b = [NSNumber numberWithFloat:n2];
            NSNumber *result = [mat sumar:a con:b];
            NSString *resultString = [result stringValue];
            NSLog(@"El resultado es: %@",resultString);
            
        } else if (strcasecmp(str, "MULTIPLICAR") == 0) {
            printf("Has seleccionado MULTIPLICAR.\n");
            
            NSLog (@"Numero 1: ");
            scanf("%lg", &n1);
            NSLog (@"Numero 2: ");
            scanf("%lg", &n2);
            
            NSNumber *a = [NSNumber numberWithFloat:n1];
            NSNumber *b = [NSNumber numberWithFloat:n2];
            NSNumber *result = [mat multiplyA:a withB:b];
            NSString *resultString = [result stringValue];
            NSLog(@"El resultado es: %@",resultString);
            
        } else if (strcasecmp(str, "DIVIDIR") == 0) {
            printf("Has seleccionado DIVIDIR.\n");
            
            NSLog (@"Numero 1: ");
            scanf("%lg", &n1);
            NSLog (@"Numero 2: ");
            scanf("%lg", &n2);
            
            NSNumber *a = [NSNumber numberWithFloat:n1];
            NSNumber *b = [NSNumber numberWithFloat:n2];
            NSNumber *result = [mat dividir:a con:b];
            NSString *resultString = [result stringValue];
            NSLog(@"El resultado es: %@",resultString);
            
        } else if (strcasecmp(str, "POTENCIAR") == 0) {
            printf("Has seleccionado POTENCIAR.\n");
            
            NSLog (@"Numero: ");
            scanf("%lg", &n1);
            NSLog (@"Potencia: ");
            scanf("%lg", &n2);
            
            NSNumber *a = [NSNumber numberWithFloat:n1];
            NSNumber *b = [NSNumber numberWithFloat:n2];
            NSNumber *result = [mat potenciar:a con:b];
            NSString *resultString = [result stringValue];
            NSLog(@"El resultado es: %@",resultString);
            
        } else if (strcasecmp(str, "RAIZ") == 0) {
            printf("Has seleccionado RAIZ.\n");
            
            NSLog (@"Numero: ");
            scanf("%lg", &n1);
            
            NSNumber *a = [NSNumber numberWithFloat:n1];
            NSNumber *result = [mat raiz:a];
            NSString *resultString = [result stringValue];
            NSLog(@"El resultado es: %@",resultString);
            
        } else if (strcasecmp(str, "FACTORIAL") == 0) {
            printf("Has seleccionado FACTORIAL.\n");
            
            NSLog (@"Numero: ");
            scanf("%lg", &n1);
            
            NSNumber *a = [NSNumber numberWithFloat:n1];
            NSNumber *result = [mat factorial:a];
            NSString *resultString = [result stringValue];
            NSLog(@"El factorial es: %@",resultString);
            
        } else if (strcasecmp(str, "SENO") == 0) {
            printf("Has seleccionado SENO.\n");
            
            NSLog (@"Grados: ");
            scanf("%lg", &n1);
            
            NSNumber *a = [NSNumber numberWithFloat:[mat seno:n1]];
            NSString *resultString = [a stringValue];
            NSLog(@"El resultado es: %@",resultString);
            
        } else if (strcasecmp(str, "PRIMO") == 0) {
            printf("Has seleccionado PRIMO.\n");
            
            NSLog (@"Numero: ");
            scanf("%lg", &n1);
            
            [mat primo:n1];
            
        } else {
            printf("Opción no válida.\n");
        }
        
    }
    return 0;
}
