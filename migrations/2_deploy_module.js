var Proxy = artifacts.require("./Proxy.sol");
var AuthModule = artifacts.require("./AuthModule.sol");

module.exports = (deployer, network, accounts)=>{

    deployer.then(async ()=>{
        
        let auth = await deployer.deploy(AuthModule, '0x276CC6035dD9441010Cd895d4A9D50791B36Eb96', '0x276CC6035dD9441010Cd895d4A9D50791B36Eb96', '0x276CC6035dD9441010Cd895d4A9D50791B36Eb96');
        let proxy = await deployer.deploy(Proxy, auth.address);
        
    });
};