pragma solidity ^0.4.19;


contract snake{

    mapping(address => uint[]) pubLog;

    function checklog() public returns(bool){
        pubLog[msg.sender].push(now);
    }


    function direction(uint x1, uint x2, uint y1, uint y2) public pure returns(uint){
        if(x1 > x2){
            return 39;
        }

        else if(x2 > x1){
            return 37;
        }

        else if(y1 > y2){
            return 40;
        }

        else if(y2 > y1){
            return 38;
        }

        else{
            return 38;
        }
    }
}
