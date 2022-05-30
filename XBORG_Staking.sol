// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface INftCollection {
     /**
     * @dev Stake Token
     */
    function stakeToken(uint256 tokenId) external;

    /**
     * @dev Unstake Token
     */
    function unstakeToken(uint256 tokenId) external;

    /**
     * @dev return Token stake status
     */
    function isTokenStaked(uint256 tokenId) external view returns (bool);
}


pragma solidity ^0.8.0;


contract NFTStaking {
    INftCollection public nftCollection;

    constructor(INftCollection _nftCollection) {
        nftCollection = _nftCollection;
    }

    function StakeToken(uint256 tokenId) external {
        nftCollection.stakeToken(tokenId);
    }

    function UnstakeToken(uint256 tokenId) external {
        nftCollection.unstakeToken(tokenId);
    }
   
    function CheckTokenStake(uint256 tokenId) public view returns (bool) {
        return nftCollection.isTokenStaked(tokenId);
    }
}
