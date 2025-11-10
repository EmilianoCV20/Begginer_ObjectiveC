//
//  main.m
//  Punto
//
//  Created by Emiliano Cepeda on 06/09/24.
//

#import <Foundation/Foundation.h>
#import "CPunto.h" //es propia por eso se usan ""

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CPunto *p1 = [[CPunto alloc]init];
        CPunto *p2 = [CPunto new];
        int x1, x2, x3, y1, y2, y3;
        x1 = 0;
        y1 = 0;
        x2 = 0;
        y2 = 0;
        x3 = 0;
        y3 = 0;
        
        //Capturar valores P1
        NSLog (@"Value X1: ");
        scanf("%i", &x1);
        NSLog (@"Value Y1: ");
        scanf("%i", &y1);
        
        //Capturar valores P1
        NSLog (@"Value X2: ");
        scanf("%i", &x2);
        NSLog (@"Value Y2: ");
        scanf("%i", &y2);
        
        
        //[p1 setX:x1 yY:y1];
        p1.x = x1;
        p1.y = y1;
        
        //p2.x = x2;
        //p2.y = y2;
        [p2 setX:x2 yY:y2];
        
        CPunto *pResul = [CPunto new];
        pResul = [CPunto sumar:p1 mas:p2];
        NSLog(@"Suma 2 puntos--> X: %ld, Y: %ld", [pResul x], pResul.y);
        
        CPunto *suma3Puntos = [CPunto new];
        suma3Puntos = [CPunto sumar:3, p1, p2, pResul];
        NSLog(@"Suma 3 puntos--> X: %ld, Y: %ld", [suma3Puntos x], suma3Puntos.y);
        
        //Calcular la distancia
        float d = [p2 distP:p1];
        NSLog(@"Distancia (Metodo Propio): %f", d);
        
        NSString *cadena = [CPunto sistema];
        NSLog(@"Cadena de la clase: %@", cadena);
        NSLog(@"Cadena de la clase: %@", [CPunto sistema]);
        
        CGFloat dist = [p1 calcularDistancia:p2];
        NSLog(@"Distancia de: %@ hasta %@ = %0.2f",p1, p2, dist);
        
        NSInteger npuntos = [CPunto numDePuntos];
        NSLog(@"👾Puntos Creados = %ld",npuntos);
        
    }
    return 0;
}
//TAREA IMPLEMENTAR ESTA APLICACION DE FORMA INTERACTIVA, PRESENTANDO LAS OPCIONES DE SUMAR (3 OPC), AGREGAR RESTAR, Y USAR EL METODO DE CALCULAR DISTANCIA
