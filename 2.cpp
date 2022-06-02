#include <iostream>
#include <string>

#define MAX 100


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

    forFooBaa(0);
  
    
}

