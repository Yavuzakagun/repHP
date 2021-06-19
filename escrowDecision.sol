pragma solidity 0.5.16;

contract escrowDecision {
    
    uint256 price;
    uint256 funds;
    address private contractOwner;
    
    modifier onlyOwner() {
        require(contractOwner == msg.sender, "Ownable: caller is not the owner");
        _;
    }
    
    constructor() public {
         contractOwner = msg.sender;
    }
    
    function setpricefunds(uint256 _price,uint256 _funds) external onlyOwner {
        price = _price;
        funds = _funds;
    }
    
    
    function makeDecisionWithString() external view returns (string memory ) {
        if(funds >= price){
           return "Congratulations!! You can visit the property";
        } 
        return "Sorry!! You can not visit the property" ;

    }
}