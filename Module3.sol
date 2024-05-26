//SPDX-License-Identifier: MIT
  pragma solidity ^0.8.15;
        
        contract Etherium{

            address public Main;

            constructor(address Owner){
                Main = Owner;
            }
                    mapping (address Address => uint Etherium)public Balance;

                function Mint (address Sender, uint token)public{
                        if(Sender == Main){
                            Balance[Sender] += token;
                        }else{
                            revert("Only owner can mint the token");
                        }
                }

                function Burn (address Sender, uint token)public{
                       if(Balance[Sender] <= token){
                            revert("don't have enough balances");
                       }else{
                            Balance[Sender] -= token;
                       } 
                }

                function Transfer (address OwnerAccount, address OtherAccount, uint token)public{
                        if(Balance[OwnerAccount] <= token){
                            revert("don't have enough balance");
                       }else{
                            Balance[OwnerAccount] -= token;
                            Balance[OtherAccount] += token;
                       }
                }
         }
