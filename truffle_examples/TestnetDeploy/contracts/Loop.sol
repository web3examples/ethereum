// endlessloop to demonstrate debugging
pragma solidity ^0.5.12;

contract Loop {
  uint myVariable;

function set(uint x) public {
  while(true) {
    myVariable = x;
  }
}
