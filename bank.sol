pragma solidity >=0.7.0<0.8.0;


contract bank{


int bal ;

constructor() public{

    bal=1;
}

function with(int amt) public 
{
if(amt>bal){
    bal;
}
else{
    bal=bal-amt;
}

}

function depo(int amt ) public{
bal=bal+amt;
}


}
