#include <stdio.h>
#include "osal.h"

int osal_entry(void)
{
	printf("%s, %s\n", __FILE__, __FUNCTION__);
	return 0;
}

int osal_api(void)
{
	printf("%s, %s\n", __FILE__, __FUNCTION__);
	return 0;
}
