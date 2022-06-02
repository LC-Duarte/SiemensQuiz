
#include <iostream>

int main(int argc, char *argv[]){
    std::string s  = argv[1];
    int i =0;
    for(i = 0; s[i] != '\0'; ++i);
    printf("len: %d", i);
    
}