#include <stdio.h>

#include <Arduino.h>
//#include <cores/arduino/Arduino.h> //Includes major c libs
//#include <variants/galileo_fab_d/variant.h>

int main(int argc, char** argv)
{
	digitalWrite(LED_BUILTIN, HIGH);
	digitalWrite(LED_BUILTIN, LOW);
	return 0;
}
