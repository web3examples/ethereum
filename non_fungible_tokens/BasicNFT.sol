// based on https://github.com/ConsenSys/artifaqt/blob/master/contract/contracts/eip721
// Use for educational purposes only

pragma solidity ^0.5.0;

contract EIP721 {  

    event Transfer(address indexed _from, address indexed _to, uint256 indexed _tokenId);
    event Approval(address indexed _owner, address indexed _approved, uint256 indexed _tokenId);
    event ApprovalForAll(address indexed _owner, address indexed _operator, bool _approved);

    string public name;
    string public symbol;
    address public admin;
    uint256 public counter = 10;

    uint256[] public allTokens; // public to easily check
    mapping(uint256 => uint256) public allTokensIndex;  // public to easily check
    mapping(address => uint256[]) public ownedTokens;   // public to easily check
    mapping(uint256 => address) public ownerOfToken;    // public to easily check
    mapping(uint256 => uint256) public ownedTokensIndex; // public to easily check
    mapping(uint256 => address) public approvedOwnerOfToken; // public to easily check
    mapping(address => mapping (address => bool)) public operators; // public to easily check
    mapping(uint256 => string) public tokenURIs; // public to easily check

    address public receivedOperator;    // public to easily check
    address public receivedFrom;        // public to easily check
    uint256 public receivedTokenId;     // public to easily check
    bytes   public receivedData;        // public to easily check

    bytes4 internal constant ERC721_BASE_INTERFACE_SIGNATURE = 0x80ac58cd;
    bytes4 internal constant ERC721_METADATA_INTERFACE_SIGNATURE = 0x5b5e139f;
    bytes4 internal constant ERC721_ENUMERABLE_INTERFACE_SIGNATURE = 0x780e9d63;
    bytes4 internal constant ONERC721RECEIVED_FUNCTION_SIGNATURE = 0x150b7a02;

    modifier tokenExists(uint256 _tokenId) {
        require(uint256(ownerOfToken[_tokenId]) != 0);
        _;
    }
    modifier allowedToOperate(uint256 _tokenId) {
        require(checkIfAllowedToOperate(_tokenId));
        _;
    }
    modifier allowedToTransfer(address _from, address _to, uint256 _tokenId) {
        require(checkIfAllowedToOperate(_tokenId) || approvedOwnerOfToken[_tokenId] == msg.sender);
        require(ownerOfToken[_tokenId] == _from);
        require(uint256(_to) != 0); //not allowed to burn in transfer method
        _;
    }

    constructor (string memory _name, string memory _symbol) public {
        admin = msg.sender;
        name = _name;
        symbol = _symbol;
    }

    function onERC721Received(address _operator, address _from, uint256 _tokenId, bytes memory _data) public returns(bytes4) {
        receivedOperator = _operator;
        receivedFrom     = _from;
        receivedTokenId  = _tokenId;
        receivedData     = _data;
        return ONERC721RECEIVED_FUNCTION_SIGNATURE;    
    } 


    
    
    function transferFrom(address _from, address _to, uint256 _tokenId) public payable
    tokenExists(_tokenId)
    allowedToTransfer(_from, _to, _tokenId) {       
        settleTransfer(_from, _to, _tokenId);
    }

    function safeTransferFrom(address _from, address _to, uint256 _tokenId, bytes memory data) public payable
    tokenExists(_tokenId)
    allowedToTransfer(_from, _to, _tokenId) {
        settleTransfer(_from, _to, _tokenId);
        uint256 size;
        assembly { size := extcodesize(_to) }  // solhint-disable-line no-inline-assembly
        if (size > 0) {
            require(EIP721(_to).onERC721Received(msg.sender, _from, _tokenId, data) == ONERC721RECEIVED_FUNCTION_SIGNATURE);
        }
    }

    function safeTransferFrom(address _from, address _to, uint256 _tokenId) public payable
    tokenExists(_tokenId)
    allowedToTransfer(_from, _to, _tokenId) {
        settleTransfer(_from, _to, _tokenId);
        uint256 size;
        assembly { size := extcodesize(_to) }  // solhint-disable-line no-inline-assembly
        if (size > 0) {
            // call on onERC721Received.
            require(EIP721(_to).onERC721Received(msg.sender, _from, _tokenId, "") == ONERC721RECEIVED_FUNCTION_SIGNATURE);
        }
    }

    function approve(address _approved, uint256 _tokenId) external payable
    tokenExists(_tokenId)
    allowedToOperate(_tokenId) {
        address owner = ownerOfToken[_tokenId];
        internalApprove(owner, _approved, _tokenId);
    }

    function setApprovalForAll(address _operator, bool _approved) external {
        require(_operator != msg.sender); // can't make oneself an operator
        operators[msg.sender][_operator] = _approved;
        emit ApprovalForAll(msg.sender, _operator, _approved);
    }

    function totalSupply() public view returns (uint256) {
        return allTokens.length;
    }

    function ownerOf(uint256 _tokenId) external view
    tokenExists(_tokenId) returns (address) {
        return ownerOfToken[_tokenId];
    }

    function tokenByIndex(uint256 _index) external view returns (uint256) {
        require(_index < allTokens.length);
        return allTokens[_index];
    }

    function tokenOfOwnerByIndex(address _owner, uint256 _index) external view
    tokenExists(_tokenId) returns (uint256 _tokenId) {
        require(_index < ownedTokens[_owner].length);
        return ownedTokens[_owner][_index];
    }

    function balanceOf(address _owner) external view returns (uint256) {
        require(uint256(_owner) != 0);
        return ownedTokens[_owner].length;
    }

    function getApproved(uint256 _tokenId) external view
    tokenExists(_tokenId) returns (address) {
        return approvedOwnerOfToken[_tokenId];
    }

    function isApprovedForAll(address _owner, address _operator) external view returns (bool) {
        return operators[_owner][_operator];
    }

    function tokenURI(uint256 _tokenId) external view returns (string memory) {
        return tokenURIs[_tokenId];
    }

    function supportsInterface(bytes4 interfaceID) external view returns (bool) {

        if (interfaceID == ERC721_BASE_INTERFACE_SIGNATURE ||
        interfaceID == ERC721_METADATA_INTERFACE_SIGNATURE ||
        interfaceID == ERC721_ENUMERABLE_INTERFACE_SIGNATURE) {
            return true;
        } else { return false; }
    }

    /* -- Internal Functions -- */
    function checkIfAllowedToOperate(uint256 _tokenId) internal view returns (bool) {
        return ownerOfToken[_tokenId] == msg.sender || operators[ownerOfToken[_tokenId]][msg.sender];
    }

    function internalApprove(address _owner, address _approved, uint256 _tokenId) internal {
        require(_approved != _owner); //can't approve to owner to itself

        if (uint256(approvedOwnerOfToken[_tokenId]) == 0 && uint256(_approved) == 0) {
            revert(); // add reason for revert?
        } else {
            approvedOwnerOfToken[_tokenId] = _approved;
            emit Approval(_owner, _approved, _tokenId);
        }
    }

    function settleTransfer(address _from, address _to, uint256 _tokenId) internal {
        //clear pending approvals if there are any
        if (uint256(approvedOwnerOfToken[_tokenId]) != 0) {
            internalApprove(_from, address(0), _tokenId);
        }

        removeToken(_from, _tokenId);
        addToken(_to, _tokenId);

        emit Transfer(_from, _to, _tokenId);
    }

    function addToken(address _to, uint256 _tokenId) internal {
        allTokens.push(_tokenId);
        allTokensIndex[_tokenId] = allTokens.length-1;
        ownerOfToken[_tokenId] = _to;        
        ownedTokens[_to].push(_tokenId);
        ownedTokensIndex[_tokenId] = ownedTokens[_to].length-1;
    }

    function removeToken(address _from, uint256 _tokenId) internal {
        uint256 allIndex = allTokensIndex[_tokenId];
        uint256 allTokensLength = allTokens.length;
        allTokens[allIndex] = allTokens[allTokensLength - 1];
        allTokensIndex[allTokens[allTokensLength-1]] = allIndex;
        delete allTokens[allTokensLength-1];
        allTokens.length -= 1;
        uint256 ownerIndex = ownedTokensIndex[_tokenId];
        uint256 ownerLength = ownedTokens[_from].length;
        ownedTokens[_from][ownerIndex] = ownedTokens[_from][ownerLength-1];
        ownedTokensIndex[ownedTokens[_from][ownerLength-1]] = ownerIndex;
        delete ownedTokens[_from][ownerLength-1];
        ownedTokens[_from].length -= 1;
        delete ownerOfToken[_tokenId];
    }


    function createToken(address _minter) public {
        require(msg.sender == admin);
        addToken(_minter, counter);
        emit Transfer(address(0), _minter, counter);
        counter += 1; // every new token gets a new ID
    }

    function burnToken(uint256 _tokenId) public {
        require(ownerOfToken[_tokenId] == msg.sender); //token should be in control of owner
        removeToken(msg.sender, _tokenId);
        emit Transfer(msg.sender, address(0), _tokenId);
    }

    function setTokenURI(uint256 _tokenID, string memory URI) public {
        require(msg.sender == admin);
        tokenURIs[_tokenID] = URI;
    }
        
    function getMetadata(uint256 _tokenId, string memory) public view returns (bytes32[4] memory buffer, uint256 count) { // when is this used?
        buffer[0] = "Hello World! :D";
        count = 15;
    }
}
