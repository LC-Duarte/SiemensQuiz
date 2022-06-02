
int main(int argc, char *argv[])
{
    if (argc < 2)
       std::cout<<"Provide input"<<std::endl;  
    std::string str = argv[1];
    int end = str.length()-1;
    int i = 0;
    while(i < end){
        str[i] ^= str[end];
        str[end] ^= str[i];
        str[i] ^= str[end];
        ++i;
        --end;
    }
    std::cout<<str<<std::endl;
    return 0;
    
}
