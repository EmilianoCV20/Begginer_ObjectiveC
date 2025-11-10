//
//  Matematicas.h
//  appMateCalculadora
//
//  Created by Emiliano Cepeda on 13/09/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Matematicas : NSObject
//Multiplicar
- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;
//Sumar
- (NSNumber *)sumar:(NSNumber *)a con:(NSNumber *)b;
//Restar
- (NSNumber *)restar:(NSNumber *)a con:(NSNumber *)b;
//Dividir
- (NSNumber *)dividir:(NSNumber *)a con:(NSNumber *)b;
//Potencia
- (NSNumber *)potenciar:(NSNumber *)a con:(NSNumber *)b;
//Raiz
- (NSNumber *)raiz:(NSNumber *)a;
//Implementar un metodo para calcular factorial
// + Modo iterativo
- (NSNumber *)factorial:(NSNumber *)a;
// + Modo recursivo
- (NSNumber *)factorialR:(NSNumber *)a;

//Usando la funcion SENO calcular el valor angular de un numero en grados
- (double)seno:(double) angulo;
- (double) radianesAgrados:(double)radianes;

//Implemente un metodo para determinar si un numero es o no, primo
- (BOOL)primo:(int)num;

@end

NS_ASSUME_NONNULL_END
