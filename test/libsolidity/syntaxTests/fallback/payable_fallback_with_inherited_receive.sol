contract A {
    receive() external payable { }
}
contract C is A {
    fallback() external payable { }
}
// TODO: should there be a warning here?
