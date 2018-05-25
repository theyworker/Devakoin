pragma solidity ^0.4.23;

<<<<<<< HEAD
=======

>>>>>>> cdaeb7396a4a76988eba131c23e0054f18285771
import './ERC20Interface.sol';

contract DevakoinToken is ERC20Interface
{
<<<<<<< HEAD
  uint public constant _totalSupply = 100000.0000;
  string public constant symbol = "devk";
  string public constant name= "Devakoin";
  uint8 public constant decimal = 4;
=======
  uint public constant _totalSupply = 100000;
  string public constant symbol = "devk";
  string public constant name= "Devakoin";
//  uint8 public constant decimal = 4;
>>>>>>> cdaeb7396a4a76988eba131c23e0054f18285771

  mapping(address=> uint256) balances;
  mapping(address => mapping(address => uint256))allowed;

<<<<<<< HEAD
  function DevakoinToken(){
  balances[msg.sender] = _totalSupply;
  }
  function gettotalSupply() public constant returns (uint256 totalSupply)
=======
  function DevakoinToken()
  {
  balances[msg.sender] = _totalSupply;
  }
  function totalSupply() public constant returns (uint256 totalSupply)
>>>>>>> cdaeb7396a4a76988eba131c23e0054f18285771
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
<<<<<<< HEAD
    emit Approval(msg.sender, _spender, _value);
=======
    Approval(msg.sender, _spender, _value);
>>>>>>> cdaeb7396a4a76988eba131c23e0054f18285771
    return true;
  }
  function transferFrom(address _from, address _to, uint _value) public returns (bool success)
  {
    require(
    allowed[_from][msg.sender] >= _value && balances[_from] >= _value && _value > 0 );
    balances[_from] -= _value;
    balances[_to] += _value;
    allowed[_from][msg.sender] -= _value;
<<<<<<< HEAD
    emit Transfer(_from,_to,_value);
=======
    Transfer(_from,_to,_value);
>>>>>>> cdaeb7396a4a76988eba131c23e0054f18285771
    return true;
  }

    function allowance(address _Owner, address _spender) public constant returns (uint remaining)
    {
      return allowed[_Owner][_spender];
    }

      event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
<<<<<<< HEAD
      event Transfer(address indexed from, address indexed _to, uint _value);
=======
>>>>>>> cdaeb7396a4a76988eba131c23e0054f18285771
}
