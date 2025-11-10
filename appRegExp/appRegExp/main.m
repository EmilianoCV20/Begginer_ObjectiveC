//
//  main.m
//  appRegExp
//
//  Created by Emiliano Cepeda on 15/10/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
        // Solicitar entrada del usuario
        char input[256];
        NSLog(@"Ingresa un texto:");
        fgets(input, sizeof(input), stdin);
        
        // Convertir el input a NSString
        NSString *userInput = [NSString stringWithUTF8String:input];
        userInput = [userInput stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]]; // Remover salto de línea
        
        // Definir el patrón de expresión regular para palabras que empiezan con mayúscula
        
        //NSString *patron = @"([A-Z])\\w+"; // Palabras con Mayusculas y el resto del texto
        NSString *patron = @"\\b[A-Z][a-z]*\\b"; // Solo palabras con Mayusculas y solo minusculas en el resto
        
         // \\b: Limita la búsqueda a las palabras completas.
        // [A-Z]: Coincide con cualquier letra mayúscula.
        // [a-z]*: Coincide con cero o más letras minúsculas después de la mayúscula.
        
        // Crear la expresión regular
        NSError *error = NULL;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:patron
                                                                               options:0
                                                                                 error:&error];
        
        
        // Buscar coincidencias en el texto ingresado por el usuario
        NSArray *matches = [regex matchesInString:userInput options:0 range:NSMakeRange(0, userInput.length)];
        
        // Mostrar resultados
        if ([matches count] > 0) {
            NSLog(@"Palabras que coinciden encontradas:");
            for (NSTextCheckingResult *match in matches) {
                NSRange matchRange = [match range];
                NSString *matchString = [userInput substringWithRange:matchRange];
                NSLog(@"%@", matchString);
            }
        } else {
            NSLog(@"No se encontraron palabras coincidentes");
        }
        */
        
        //--CODIGO CLASE--
        //NSString *cadenaPrueba = @"abcd abc ac bc dc AC BC Tec";
        //NSString *cadenaPrueba = @"FACE abcd";
        NSString *cadenaPrueba = @"10101010 1010";
        
        //Validar numeros Hexadecimales con exp reg
        NSLog(@"Cadena a analizar: %@",cadenaPrueba);
        
        NSError *error = NULL;
        NSMutableString *cadenaPatron = [[NSMutableString alloc]init];
        //[cadenaPatron appendString:@"\\b(a|b|T)(e|c|d)(c)\\b"];
        
        //Validar numeros HEXA
        //[cadenaPatron appendString:@"^[a-fA-F0-9]{1,8}$"];
        //[cadenaPatron appendString:@"[a-fA-F0-9]"];
        
        //Validar Binarios
        //[cadenaPatron appendString:@"[0-1]{1,8}"];
        //^[\\w-]+(\\.[\\w - _*]+)@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,}])$
        
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern: cadenaPatron
                                                                               options: 1 /*NSRegularExpressionCaseInsensitive*/
                                                                                 error:&error];
        
        //Ejemplo APPLE
        NSUInteger numberOfMatches = [regex numberOfMatchesInString:cadenaPrueba
                                                            options:0
                                                              range:NSMakeRange(0, [cadenaPrueba length])];
        
        NSLog(@"Numero de coincidencias: %ld",numberOfMatches);
        
        //Ejemplo 1
        NSArray *matches = [regex matchesInString:cadenaPrueba options:0 range:NSMakeRange(0, cadenaPrueba.length)];
        
        
        for (NSTextCheckingResult *matchResult in matches)
        {
            NSString *match = [cadenaPrueba substringWithRange:matchResult.range];
            NSLog(@"La cadena contiene %@", match);
        }
        
        /*
        //Ejemplo propio
        if ([matches count] > 0) {
            NSLog(@"Palabras que coinciden encontradas: %lu",(unsigned long)matches.count);
            for (NSTextCheckingResult *match in matches) {
                NSRange matchRange = [match range];
                NSString *match = [cadenaPrueba substringWithRange:matchRange];
                NSLog(@"%@", match);
            }
        } else {
            NSLog(@"No se encontraron coincidencias");
        }
        */
    }
    return 0;
}

