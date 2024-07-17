// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract Storage {

    mapping(address=>uint) public balance;


    modifier isAdult(uint age){
        require(age>=18,"minor");
        _;
    }
    modifier isBankrupt(address account){
        if(balance[account]<0){
            revert("You are already Bankrupt");
        }
        _;
    }

    function canOpen(uint age) public pure  isAdult(age) returns (bool){
        return true;
    }

    function canWithdraw(address add,uint value,uint age) public isAdult(age) returns(uint,string memory){
        assert(balance[add]>=value);
        balance[add]-=value;
        return (balance[add],"Success");

    }

    function canDeposit(address add,uint value,uint age) public isAdult(age) returns(uint,string memory){

        balance[add]+=value;
        return (balance[add],"Success");
    }

    function takeLoan(address add,uint value,uint age) public isAdult(age) isBankrupt(add) returns(uint,string memory){
        balance[add]+=value;
        return (balance[add],"Loan sanctioned");
    }

}