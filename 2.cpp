#include <iostream>
#include <string>
#include<ctime>
#define MAX 100

void tailFooBaa(int i, int c=0){
    std::string msg ="";
    if(i%3 == 0)
        msg += "Foo";
    if(i%5 == 0)
        msg += "Baa";
    else if (i%3 != 0)
        msg+=  std::to_string(i);
    std::cout << msg << std::endl ;
    if (i<MAX){
        tailFooBaa(i+1, c+1);
    }
}

void forFooBaa(int i0){
    for( int i = i0; i<MAX; i++){
        std::string msg ="";
        if(i%3 == 0)
            msg += "Foo";
        if(i%5 == 0)
            msg += "Baa";
        else if (i%3 != 0)
            msg+=  std::to_string(i);
        std::cout << msg << std::endl ;
    }

}

int main(){
    std::time_t t0, t1, t2, t3;
    std::time(&t0);
    forFooBaa(0);
    std::time(&t1);
    std::time(&t2);
    tailFooBaa(0);
    std::time(&t3);
    std::cout << std::to_string(t1-t0) << std::endl ;
    std::cout << std::to_string(t3-t2) << std::endl ;
}

