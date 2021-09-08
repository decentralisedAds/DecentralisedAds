//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecentralisedAdsRegistry {
    address private immutable _owner;
    address private _decentralisedAdsContract;

    constructor(address owner, address decentralisedAds) {
        _decentralisedAdsContract = decentralisedAds;
        _owner = owner;
    }

    function getDecentralisedAds() external view returns(address) {
        return _decentralisedAdsContract;
    }

    function setDecentralisedAds(address newDecentralisedAds) external {
        require(_owner == msg.sender, "DECENTRALISEDADSREGISTRY: Not the owner");
        _decentralisedAdsContract = newDecentralisedAds;
    }
}
