// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

interface IPredictiveDeployer {
    function userNonces(address _principal, bytes32 _hashedBytecode) external returns (uint256);
    function getTransactionHash(address _principal, bytes memory _bytecode, uint256 _nonce)
        external
        returns (bytes32);
    function getBytecodeHash(bytes memory _bytecode) external pure returns (bytes32);
    function getAddress(address _principal, bytes memory _bytecode) external returns (address);
    function deploy(address _principal, bytes memory _signature, bytes memory _bytecode) external returns (address);
}
