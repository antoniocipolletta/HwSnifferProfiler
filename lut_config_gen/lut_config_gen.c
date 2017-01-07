#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv) {

    FILE* fp;
    int i;


    fp = fopen("LUT_config.coe","w");

    fprintf(fp,"memory_initialization_radix=16\n");
    fprintf(fp,"memory_initialization_vector=\n");
    for (i = 0; i < 128; i++) {
        fprintf(fp,"%x",i);
        if ( i != 127 )
            fprintf(fp,",\n");
        else
            fprintf(fp,";");
    }

    return 0;
}
