//
//  main.m
//  PruebaBlock
//
//  Created by Emiliano Cepeda on 08/09/24.
//

#import <Foundation/Foundation.h>

int (^sumaBlock)(int, int) = ^(int a, int b) {
    return a + b;
};

void (^mayor10)(int) = ^(int numero) {
    if(numero > 10){
        printf("Si es mayor\n");
    } else {
        printf("No es mayor\n");
    }
};

int main(int argc, const char * argv[]) {
    int a = 0, b = 0;
    
    printf("N1: ");
    scanf("%i", &a);
    printf("N2: ");
    scanf("%i", &b);
    
    NSLog( @"Total: %i", sumaBlock(a, b) );
    
    mayor10(a);
    mayor10(b);
    
    return 0;
}
