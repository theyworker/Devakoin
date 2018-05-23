pragma solidity ^0.4.23;


import './ERC20Interface.sol';

contract DevakoinToken is ERC20Interface
{
  uint public constant _totalSupply = 100000;
  string public constant symbol = "devk";
  string public constant name= "Devakoin";
//  uint8 public constant decimal = 4;

  mapping(address=> uint256) balances;
  mapping(address => mapping(address => uint256))allowed;

  function DevakoinToken()
  {
  balances[msg.sender] = _totalSupply;
  }
  function totalSupply() public constant returns (uint256 totalSupply)
  {
    return _totalSupply;
  }
  function balanceOf(address _Owner) public constant returns (uint256 balance)
  {
    return balances[_Owner];
  }
  function transfer(address _to, uint _value) public returns (bool success)
  {
    require(
      balances[msg.sender] >= _value && _value > 0 );
      balances[msg.sender] -= _value;
      balances[_to] += _value;
      return true;
  }
  function approve(address _spender, uint _value) public returns (bool success)
  {
    allowed[msg.sender][_spender] = _value;
    Approval(msg.sender, _spender, _value);
    return true;
  }
  function transferFrom(address _from, address _to, uint _value) public returns (bool success)
  {
    require(
    allowed[_from][msg.sender] >= _value && balances[_from] >= _value && _value > 0 );
    balances[_from] -= _value;
    balances[_to] += _value;
    allowed[_from][msg.sender] -= _value;
    Transfer(_from,_to,_value);
    return true;
  }

    function allowance(address _Owner, address _spender) public constant returns (uint remaining)
    {
      return allowed[_Owner][_spender];
    }

      event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}
