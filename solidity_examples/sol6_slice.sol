pragma solidity 0.6.1;

contract Slice{
    
    bytes exampleBytes = hex'abcd';
    
    event logbytes(bytes);
    
    function test(bytes calldata data, uint n) external  {
        bytes memory b=bytes(data[:n]);
        emit logbytes(b);
        
    }        
    function testall() external {
        this.test(exampleBytes,0);
        this.test(exampleBytes,1);
        this.test(exampleBytes,2);
    }
}
