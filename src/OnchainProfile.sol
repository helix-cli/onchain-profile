// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract OnchainProfile {
    struct Profile {
        string publicEncryptionKey;
        uint256 nonce;
    }

    mapping(address => Profile) public profiles;

    function setProfile(string publicEncryptionKey, uint256 nonce) public {
        profiles[msg.sender] = Profile(publicEncryptionKey, nonce);
    }

    function setProfileOnBehalf(address user, string publicEncryptionKey, uint256 nonce, bytes memory signature) public {
    }
}
