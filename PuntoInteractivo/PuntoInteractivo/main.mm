//
//  main.m
//  PuntoInteractivo
//
//  Created by Emiliano Cepeda on 12/09/24.
//


#import <Foundation/Foundation.h>
#import "CPunto.h" //es propia por eso se usan ""

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CPunto *p1 = [[CPunto alloc]init];
        CPunto *p2 = [CPunto new];
        CPunto *p3 = [CPunto new];
        int x1, x2, x3, y1, y2, y3;
        x1 = 0;
        y1 = 0;
        x2 = 0;
        y2 = 0;
        x3 = 0;
        y3 = 0;
        char str[20] = {0};
        
        printf("SELECCIONE EL MODO QUE QUIERES HACER CON LOS PUNTOS :\n➕SUMAR\n🤖SUMAR-V2\n🧑‍🧒‍🧒SUMAR-3\n➖RESTA\n🛣️DISTANCIA\n\n");
        scanf("%s", str);
        
        if (strcasecmp(str, "SUMAR") == 0) {
            printf("Has seleccionado SUMAR.\n");
            
            NSLog (@"Value X1: ");
            scanf("%i", &x1);
            NSLog (@"Value Y1: ");
            scanf("%i", &y1);
            
            NSLog (@"Value X2: ");
            scanf("%i", &x2);
            NSLog (@"Value Y2: ");
            scanf("%i", &y2);
            
            [p1 setX:x1 yY:y1];
            [p2 setX:x2 yY:y2];
            
            CPunto *pResul = [CPunto new];
            pResul = [CPunto sumar:p1 mas:p2];
            NSLog(@"Suma 2 puntos -> X: %ld, Y: %ld", [pResul x], pResul.y);
            
        } else if (strcasecmp(str, "SUMAR-V2") == 0) {
            printf("Has seleccionado SUMAR-v2.\n");
            
            NSLog (@"Value X1: ");
            scanf("%i", &x1);
            NSLog (@"Value Y1: ");
            scanf("%i", &y1);
            
            NSLog (@"Value X2: ");
            scanf("%i", &x2);
            NSLog (@"Value Y2: ");
            scanf("%i", &y2);
            
            [p1 setX:x1 yY:y1];
            [p2 setX:x2 yY:y2];
            
            CPunto *Result = [CPunto new];
            Result = [p1 sumar:p2];
            NSLog(@"Suma 2 puntos -> X: %ld, Y: %ld", [Result x], Result.y);
            
        } else if (strcasecmp(str, "SUMAR-3") == 0) {
            printf("Has seleccionado SUMAR-3.\n");
            
            NSLog (@"Value X1: ");
            scanf("%i", &x1);
            NSLog (@"Value Y1: ");
            scanf("%i", &y1);
            
            NSLog (@"Value X2: ");
            scanf("%i", &x2);
            NSLog (@"Value Y2: ");
            scanf("%i", &y2);
            
            NSLog (@"Value X3: ");
            scanf("%i", &x3);
            NSLog (@"Value Y3: ");
            scanf("%i", &y3);
            
            [p1 setX:x1 yY:y1];
            [p2 setX:x2 yY:y2];
            [p3 setX:x3 yY:y3];
            
            CPunto *suma3Puntos = [CPunto new];
            suma3Puntos = [CPunto sumar:3, p1, p2, p3];
            NSLog(@"Suma 3 puntos--> X: %ld, Y: %ld", [suma3Puntos x], suma3Puntos.y);
            
        } else if (strcasecmp(str, "RESTA") == 0) {
            printf("Has seleccionado RESTA.\n");
            
            NSLog (@"Value X1: ");
            scanf("%i", &x1);
            NSLog (@"Value Y1: ");
            scanf("%i", &y1);
            
            NSLog (@"Value X2: ");
            scanf("%i", &x2);
            NSLog (@"Value Y2: ");
            scanf("%i", &y2);
            
            [p1 setX:x1 yY:y1];
            [p2 setX:x2 yY:y2];
            
            CPunto *Result = [CPunto new];
            Result = [p2 restar:p1];
            NSLog(@"Resta 2 puntos -> X: %ld, Y: %ld", [Result x], Result.y);
            
        } else if (strcasecmp(str, "DISTANCIA") == 0) {
            printf("Has seleccionado DISTANCIA.\n");
            
            NSLog (@"Value X1: ");
            scanf("%i", &x1);
            NSLog (@"Value Y1: ");
            scanf("%i", &y1);
            
            NSLog (@"Value X2: ");
            scanf("%i", &x2);
            NSLog (@"Value Y2: ");
            scanf("%i", &y2);
            
            [p1 setX:x1 yY:y1];
            [p2 setX:x2 yY:y2];
            
            float d = [p2 distP:p1];
            NSLog(@"Distancia entre 2 puntos: %f", d);
            
        } else {
            printf("Opción no válida.\n");
        }
        
//
//        NSString *cadena = [CPunto sistema];
//        NSLog(@"Cadena de la clase: %@", cadena);
//        NSLog(@"Cadena de la clase: %@", [CPunto sistema]);
//        
//        CGFloat dist = [p1 calcularDistancia:p2];
//        NSLog(@"Distancia de: %@ hasta %@ = %0.2f",p1, p2, dist);
//        
//        NSInteger npuntos = [CPunto numDePuntos];
//        NSLog(@"👾Puntos Creados = %ld",npuntos);
        
    }
    return 0;
}
