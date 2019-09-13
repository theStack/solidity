contract C {
    fallback() external payable { }
}
// ----
// Warning: (0-50): This contract has a payable fallback function, but no receive ether function. Consider adding a receive ether function.
