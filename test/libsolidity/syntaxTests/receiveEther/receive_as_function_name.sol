contract C {
    function receive() external pure {}
}
// ----
// ParserError: (26-33): This function is named "receive" but is not the receive ether function of the contract. If you intend this to be a receive ether function, use "receive(...) { ... }" without the "function" keyword to define it.
