//
//  arithematic_implementation.mm
//

#import <Foundation/Foundation.h>

#include "core/config/project_settings.h"

#import "arithematic_implementation.h"
#import "arithematic-Swift.h"

HelloSwift *helloSwift = [[HelloSwift alloc] init];

void Arithematic::_bind_methods() {
    ADD_SIGNAL(MethodInfo("sub_result", PropertyInfo(Variant::STRING, "result")));
    ADD_SIGNAL(MethodInfo("hello_value", PropertyInfo(Variant::STRING, "value")));
    
	ClassDB::bind_method(D_METHOD("foo"), &Arithematic::foo);
}

Error Arithematic::foo() {
	NSLog(@"Arithematic foo");
	return OK;
}

int sum(int numberOne, int numberTwo){
    return numberOne + numberTwo;
}

void subtract(int numberOne, int numberTwo){
    emit_signal("sub_result",numberTwo - numberOne);
}

void hello(String hello){
    NSString *helloData = [[NSString alloc] initWithUTF8String:hello.utf8().get_data()];
    NSString *value = [helloSwift sayHelloWithSomeString:helloData];
    emit_signal("hello_value",value.UTF8String);
}

Arithematic::Arithematic() {
	NSLog(@"Arithematic constructor");
}

Arithematic::~Arithematic() {
	NSLog(@"Arithematic destructor");
}
