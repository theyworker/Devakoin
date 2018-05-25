pragma solidity ^0.4.23;

contract ERC20Interface {
<<<<<<< HEAD
    function gettotalSupply() public constant returns (uint);
=======
    function totalSupply() public constant returns (uint);
>>>>>>> cdaeb7396a4a76988eba131c23e0054f18285771
    function balanceOf(address tokenOwner) public constant returns (uint balance);
    function allowance(address tokenOwner, address spender) public constant returns (uint remaining);
    function transfer(address to, uint tokens) public returns (bool success);
    function approve(address spender, uint tokens) public returns (bool success);
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}
