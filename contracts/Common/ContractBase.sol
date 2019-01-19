pragma solidity >=0.4.21 <0.6.0;
import "../Proxy.sol";

contract ContractBase {
    
    Proxy proxy;

    constructor(address _proxy) public {
        proxy = Proxy(_proxy);
    }
    
}