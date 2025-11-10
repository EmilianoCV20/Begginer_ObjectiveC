//
//  CPunto.h
//  PuntoInteractivo
//
//  Created by Emiliano Cepeda on 12/09/24.
//
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CPunto : NSObject
{
    //Los atributos de las clases se colocan entre llaves
    //y por default son protected
    NSInteger x;
    NSInteger y;
}
//Los metodos de clase utilizan el "+" equivalente
//al static de Java

//Los metodos de instancia utilizan el "-"

+(NSString *)sistema;
+(NSInteger)numDePuntos;

//metodos de instancia
-init;
-(NSInteger)x; //Equivalente a un getter de JAVA
-(void)setX:(NSInteger)paramX;
-(void)setX:(NSInteger)paramX conIncremento:(NSInteger) paramIncrementar;

-(NSInteger)y; //Equivalente a un getter de JAVA
-(void)setY:(NSInteger)paramY;
-(void)setY:(NSInteger)paramY conIncremento:(NSInteger) paramIncrementar;

-(void)setX:(NSInteger)paramX yY:(NSInteger) paramY;
//Metodo de clase
+(CPunto *)sumar:(CPunto *)p1 mas:(CPunto *)p2;
//Metodo instancia
-(CPunto *)sumar:(CPunto *) p;
//Parametros Variables
+(CPunto *)sumar:(NSInteger) n, ... ;

-(float)distP:(CPunto *)p;

-(CGFloat)calcularDistancia:(CPunto *)p;

-(CPunto *)restar:(CPunto *) p;

@end

NS_ASSUME_NONNULL_END
