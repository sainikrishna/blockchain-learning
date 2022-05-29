// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


contract Funder {

    uint public numberOfFunders;

    mapping(uint => address) private funders;

    receive () external payable {}

    function transfer() external payable{
        funders[numberOfFunders]=msg.sender;
    }
    function withdraw(uint withdrawAmount) external {
         require(withdrawAmount <= 2000000000000000000, "Cannot withdraw more than 2 ether");
         payable (msg.sender).transfer(withdrawAmount);
    }
}