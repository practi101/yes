pragma solidity >=0.7.0<0.8.0;

contract student{
    modifier onlyOwner{
        require(owner==msg.sender);
        _ ;
    }
    struct stu{
        string name;
        int roll;
        int  marks;



    }

    address owner;
    int public stdcount=0;
    mapping(int => stu) public stdre;

constructor() public {

    owner=msg.sender;

}


function addnew(string memory _name , int _roll , int _mar) public onlyOwner {

stdcount=stdcount+1;
stdre[stdcount]=stu(_name,_roll,_mar);


}

function bm(int _bonus) public onlyOwner
{


    stdre[stdcount].marks = stdre[stdcount].marks + _bonus;
}
}
