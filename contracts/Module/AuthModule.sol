pragma solidity >=0.4.21 <0.6.0;

contract AuthModule {

    address primaryAdmin;
    address primaryIssuer;
    address primaryExchange;

    constructor(
        address _admin, 
        address _issuer, 
        address _exchange
    ) 
        public 
    {
        primaryAdmin = _admin;
        primaryIssuer = _issuer;
        primaryExchange = _exchange;
    }

    function isAdmin(address _admin) public view returns (bool) {
        return primaryAdmin == _admin;
    }

    function isIssuer(address _issuer) public view returns (bool) {
        return primaryIssuer == _issuer;
    }

    function isExchange(address _exchange) public view returns (bool) {
        return primaryExchange == _exchange;
    }

}