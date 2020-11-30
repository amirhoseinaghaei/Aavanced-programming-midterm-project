#include <iostream>
#include <vector>

template <class T>
struct optimum
{
    bool operator()(const T& a , const T& b) const { return a < b ; } 

};

template <class T , class Comparison>
const T* find_optimum(const std::vector<T>& arr , Comparison comp )
{
    const T* item{&arr[0]} ; 
    for (size_t i{0} ; i < arr.size(); i++)
    {
        if (comp(arr[i] , *item))
        {   
            item  = &arr[i] ; 
        }
        
    }
    return item  ; 
    
}
