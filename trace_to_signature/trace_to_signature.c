#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>

#define XOR_POS 0x5555555555555555
#define LSB_MASK 1
#define MSB_MASK (1UL)<<63

int main(int argc, char **argv)
{
  //File input vars
  FILE *fp;
  char req_ack_1_line, req_ack_2_line;
  char r_w_1_line, r_w_2_line;
  char time1[256], time2[256];
  uint64_t addr_1_line, addr_2_line;
  uint64_t data_1_line, data_2_line;

  uint64_t addr_sign, addr_tmp;
  uint64_t data_sign, data_tmp;
  uint8_t  cntr_sign, cntr_tmp;

  int c, i, div;

  if (argc < 3){
    fprintf(stderr, "Parameters ERROR!\nUsage: %s <trace_file> <divisor>\n", argv[0]);
    return 1;
  }

  if ((fp = fopen(argv[1], "r")) == NULL){
    fprintf(stderr, "Can't open file %s\n", argv[1]);
    return 2;
  }

  data_sign = 0;
  addr_sign = 0;
  cntr_sign = 0;
  c = 0;
  sscanf(argv[2], "%d", &div);

  printf( "memory_initialization_radix=16;\n"
          "memory_initialization_vector=\n");

  while(fscanf(fp, "%c %s %c %lx %lx\n%c %s %c %lx %lx\n",
              &req_ack_1_line, time1, &r_w_1_line, &addr_1_line, &data_1_line,
              &req_ack_2_line, time2, &r_w_2_line, &addr_2_line, &data_2_line) != EOF)
  {
    //printf("%c %016lx %016lx\n", r_w_2_line, data_2_line, addr_2_line);

    if(cntr_sign == 1){
      addr_tmp = (addr_sign<<1) ^ addr_2_line ^ XOR_POS;
      data_tmp = (data_sign<<1 | ((addr_sign & MSB_MASK) != 0)) ^ data_2_line ^ XOR_POS;
    }else{
      addr_tmp = (addr_sign<<1) ^ addr_2_line;
      data_tmp = (data_sign<<1  | ((addr_sign & MSB_MASK) != 0)) ^ data_2_line;
    }



    cntr_tmp = (r_w_2_line == 'r') ? 1 : 0; //D(128)
    cntr_tmp = cntr_tmp ^ cntr_sign ^ ((data_sign & MSB_MASK) != 0);

    addr_sign = addr_tmp;
    data_sign = data_tmp;
    cntr_sign = cntr_tmp;

    c++;
    if(c >= div){
      printf("%x%016lx%016lx,\n", cntr_sign, data_sign, addr_sign);
      c=0;
    }

  }

  fclose(fp);

  return 0;
}
