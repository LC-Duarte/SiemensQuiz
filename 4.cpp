
/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/

//Unsure if using Unit test library is ok so created a new file
//Copied the code from las question for pratical reasons (avoid needing a header file )

#include <iostream>
#include <string>
using namespace std;

int calcImpact(char a, char b){
    int impact = 0;
    if(a == b){
        return impact;
    }
    //Add or Remove whitespace
    if((a == ' ' || b == ' ') && a != b){
        impact+=1;
    }
    //Replace char
    else if(a != ' ' && b != ' ' && a != b){
        impact+=2;
    }
    return impact;
    
    
}

string ConcatRemove (string s, string t, int k){
    int need = 0;
    //T string is smaller
    if(s > t){
        //cout<<"t is shorter"<< endl;
        for(int i =0; i < s.length(); i++){
          need += calcImpact(s.at(i), t.at(i));
        }
    }else{
        for(int i =0; i < t.length(); i++){
          need += calcImpact(s.at(i), t.at(i));
        }
        //If no impact is detected but target is longer we need to add the number of extra chars from t 
        need += t.length() - s.length();
    }
   // cout<< "impact" << need;
    if(need > k ){
        return "no";
    }
    return "yes";
}

int TEST_ConcatRemove(){
    int fail = 0;
    const int nCases = 3;
    string sAndTCases[2][nCases]  = {{"tab", "bla bla bla bla", "testtest"},{"tab", "blablabcde", "test testeeee"}};
    int kCases[nCases] = {7, 8, 3};
    string outCases[nCases] = {"no", "yes", "yes"}; 
    for(int i = 0; i<nCases; i++){
        string ret = ConcatRemove(sAndTCases[0][i], sAndTCases[1][i], kCases[i]);
        if(ret != outCases[i]){
            cout<<"FAILED TEST CASE" <<i+1<<endl;
            cout<<"s: "<<sAndTCases[0][i]<< " t: "<< sAndTCases[1][i]<< " k: " << kCases[i]<< "returned: " << ret <<" expected: "<<outCases[i] <<endl;
            return -1;
        }
         cout<<"PASSED TEST CASE" <<i+1<<endl;
    }
    return 0;
}


int main(int argc, char *argv[])
{
    //int ki;
    //string si,ti;
    //Use get line to get full string(with Whitespace)
    //getline (cin, si);
    //getline (cin, ti);
    //cin >> ki;
    //cout<<ConcatRemove(si,ti,ki);
    return TEST_ConcatRemove();
    
    
}