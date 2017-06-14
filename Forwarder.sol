pragma solidity 0.4.11;

/**
 * Contract that will forward any incoming Ether to its creator
 */
contract Forwarder {
  // Address to which any funds sent to this contract will be forwarded
  address public destinationAddress;

  /**
   * Create the contract, and set the destination address to that of the creator
   */
  function Forwarder() {
    destinationAddress = 0x1383291272a46CF237a285066A7a1Ec4f749E8cf;
  }

  /**
   * Default function; Gets called when Ether is deposited, and forwards it to the destination address
   */
  function() payable {
        if (!destinationAddress.send(msg.value))
            throw;
  }


}
