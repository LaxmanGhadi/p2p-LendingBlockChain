pragma solidity ^0.5.16;

import "./Ownable.sol";

contract Destructible is Ownable {
    function destructible() public payable {}

    address payable public owner;

    function destroy() public onlyOwner {
        selfdestruct(owner);
    }

    function destroyAndSend(address payable _recipient) public onlyOwner {
        selfdestruct(_recipient);
    }
}
