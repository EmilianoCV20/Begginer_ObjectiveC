//
//  main.m
//  appERValidarCadena
//
//  Created by Emiliano Cepeda on 17/10/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *cadenaPrueba = @"TEc Laguna RIFA";
        
        NSLog(@"Cadena a analizar: %@",cadenaPrueba);
        
        NSError *error = NULL;
        
        NSMutableString *cadenaPatron = [[NSMutableString alloc]init];

        [cadenaPatron appendString:@"[aeiou]"];
        
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern: cadenaPatron
                                                                               options: 1 /*NSRegularExpressionCaseInsensitive*/
                                                                                 error:&error];
        
        //Ejemplo APPLE
        /*
        NSUInteger numberOfMatches = [regex numberOfMatchesInString:cadenaPrueba
                                                            options:0
                                                              range:NSMakeRange(0, [cadenaPrueba length])];
        
        NSLog(@"Numero de coincidencias: %ld",numberOfMatches);
        */
        
        NSArray *matches = [regex matchesInString:cadenaPrueba options:0 range:NSMakeRange(0, cadenaPrueba.length)];
        
        /*
        int cVocales=0;
        for (NSTextCheckingResult *matchResult in matches)
        {
            NSString *match = [cadenaPrueba substringWithRange:matchResult.range];
            NSLog(@"La cadena contiene %@", match);
            cVocales++;
        }
        NSLog(@"La cadena contiene %d", cVocales);
        */
        
        
        if ([matches count] > 0) {
            NSLog(@"Vocales encontradas: %lu",(unsigned long)matches.count);
            for (NSTextCheckingResult *match in matches) {
                NSRange matchRange = [match range];
                NSString *match = [cadenaPrueba substringWithRange:matchRange];
                NSLog(@"Contiene: %@", match);
            }
        } else {
            NSLog(@"No se encontraron coincidencias");
        }
        
    }
    return 0;
}
