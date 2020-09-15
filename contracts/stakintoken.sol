pragma solidity >=0.5.12;

contract StakinToken {

    mapping(address => uint256) balances;


    uint256 public totalSupply = 0;
    

    function transfer(address _to, uint256 _value) public returns (bool success) {

        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
            balances[msg.sender] -= _value;
            balances[_to] += _value;
            return true;
        } else { return false; }
    }

    function balanceOf(address _owner) public view returns (uint256 balance) {
        return balances[_owner];
    }

    function mint(uint256 _value) public {

            balances[msg.sender] += _value;
            totalSupply += _value;
    }

}
