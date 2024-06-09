//
//  arithematic.mm
//

#import <Foundation/Foundation.h>

#import "arithematic.h"
#import "arithematic_implementation.h"

#import "core/config/engine.h"


Arithematic *plugin;

void arithematic_init() {
	NSLog(@"init plugin");

	plugin = memnew(Arithematic);
	Engine::get_singleton()->add_singleton(Engine::Singleton("Arithematic", plugin));
}

void arithematic_deinit() {
	NSLog(@"deinit plugin");
	
	if (plugin) {
	   memdelete(plugin);
   }
}
