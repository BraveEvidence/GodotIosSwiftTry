//
//  arithematic_implementation.h
//

#ifndef arithematic_implementation_h
#define arithematic_implementation_h

#include "core/object/object.h"
#include "core/object/class_db.h"

class Arithematic : public Object {
	GDCLASS(Arithematic, Object);
	
	static void _bind_methods();
	
public:
	
	Error foo();
    int sum(int numberOne, int numberTwo);
    void subtract(int numberOne, int numberTwo);
    void hello(String hello);
	
	Arithematic();
	~Arithematic();
};

#endif /* arithematic_implementation_h */
