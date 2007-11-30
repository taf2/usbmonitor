/*
 * Main USB Service
 *
 * This process will monitor the system USB devices to:
 *
 * send notification when a new device has been attached
 * recieve data from devices
 * send data to devices
 *
 * It will communicate through the system and expose a simple REST
 *
 * interface for accessing the list of currently plugged in devices
 * data from the current devices.
 * data to send to a current device
 *
 * The device will need to be setup as a daemon correctly for it's specific OS
 *
 * Author: todd.fisher@gmail.com
 */

#include <stdio.h>
#include <stdlib.h>

int main( int argc, char **argv )
{
	printf("Hello there world\n");
	return 0;
}
