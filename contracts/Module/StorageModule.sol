pragma solidity >=0.4.21 <0.6.0;

import "../Common/Authorization.sol";
import "../Library/LibMapAddressBool.sol";

contract StorageModule is Authorization {

    using LibMapAddressBool for LibMapAddressBool.MapAddressBool;

    LibMapAddressBool.MapAddressBool shareholders;
    
    bool public isTXFrozen;
    uint256 public shareholderMaxAmount;
}